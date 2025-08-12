import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:property_sales/core/constants/constants.dart';
import 'package:property_sales/core/helpers/spacing.dart';
import 'package:property_sales/core/models/result.dart';
import 'package:property_sales/core/style/assets/assets.gen.dart';
import 'package:property_sales/core/themes/app_colors.dart';
import 'package:property_sales/core/widgets/text_fields/custom_text_field.dart';
import 'package:property_sales/features/home/domain/entites/product_entity.dart';
import 'package:property_sales/features/home/presentation/cubit/home_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: SizedBox(
          height: kToolbarHeight - 10,
          child: Assets.images.appIcon.image(fit: BoxFit.contain),
        ),
        actions: const [
          Badge(
            label: Text('3', style: TextStyle(color: AppColors.whiteText)),
            child: Icon(
              Icons.notifications_outlined,
              color: AppColors.grey,
              size: 30,
            ),
          ),
          HorizontalSpace(12),
          Icon(Icons.menu, color: AppColors.grey, size: 30),
          HorizontalSpace(8),
        ],
      ),
      body: const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const VerticalSpace(16),
          _SearchBox(),
          const VerticalSpace(16),
          _ResultsHeader(),
          const VerticalSpace(8),
          // const _SortRow(),
          // const VerticalSpace(8),

          // Scrollable area
          const Expanded(child: _ProductsList()),
          const VerticalSpace(16),
        ],
      ),
    );
  }
}

/* --------------------------- PRODUCTS LIST --------------------------- */

class _ProductsList extends StatelessWidget {
  const _ProductsList();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();
    final items = context.select((HomeCubit c) => c.state.items);
    final status = context.select((HomeCubit c) => c.state.status);
    final isLoadingMore = context.select(
      (HomeCubit c) => c.state.isLoadingMore,
    );
    final searchTerm = context.select((HomeCubit c) => c.state.searchTerm);

    final isInitialLoading = status.maybeWhen(
      loading: () => true,
      orElse: () => false,
    );

    // Show fixed-height states inside Expanded
    if (isInitialLoading && items.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }
    if (items.isEmpty && searchTerm.isNotEmpty) {
      return const Center(child: Text('No results'));
    }

    return NotificationListener<ScrollNotification>(
      onNotification: (n) {
        if (n.metrics.pixels >= n.metrics.maxScrollExtent - 200) {
          cubit.loadMoreIfPossible();
        }
        return false;
      },
      child: ListView.separated(
        padding: EdgeInsets.zero,
        itemCount: items.length + (isLoadingMore ? 1 : 0),
        separatorBuilder: (_, __) =>
            const SizedBox(height: 16), // space between cards (like the mock)
        itemBuilder: (context, index) {
          if (index >= items.length) {
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Center(child: CircularProgressIndicator()),
            );
          }
          final p = items[index];
          return _ProductCard(item: p);
        },
      ),
    );
  }
}

/* ------------------------ HEADER + SORT (fixed) ----------------------- */

class _ResultsHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final count = context.select((HomeCubit c) => c.state.items.length);
    return Row(
      children: [
        Expanded(
          child: RichText(
            text: TextSpan(
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(color: AppColors.primaryText),
              children: [
                const TextSpan(text: 'Results for '),
                const TextSpan(
                  text: 'Apartment',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                TextSpan(text: ' ($count)'),
              ],
            ),
          ),
        ),
        IconButton(
          icon: const Icon(Icons.tune, color: AppColors.primaryText),
          onPressed: () {},
        ),
      ],
    );
  }
}

// class _SortRow extends StatelessWidget {
//   const _SortRow();

//   @override
//   Widget build(BuildContext context) {
//     final sort = context.select(
//       (HomeCubit c) => c.state.sortLabel ?? 'Relevant',
//     );
//     return Row(
//       children: [
//         const Text('Sort by '),
//         DropdownButton<String>(
//           value: sort,
//           underline: const SizedBox.shrink(),
//           onChanged: (v) =>
//               context.read<HomeCubit>().changeSort(v ?? 'Relevant'),
//           items: const [
//             DropdownMenuItem(value: 'Relevant', child: Text('Relevant')),
//             DropdownMenuItem(value: 'Newest', child: Text('Newest')),
//             DropdownMenuItem(
//               value: 'Price: Low to High',
//               child: Text('Price: Low to High'),
//             ),
//             DropdownMenuItem(
//               value: 'Price: High to Low',
//               child: Text('Price: High to Low'),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }

class _SearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();
    return CustomTextField(
      hintText: 'Search',
      onChanged: cubit.searchChanged,
      onEditingComplete: cubit.submitSearch,
      onTapOutside: (_) => FocusScope.of(context).unfocus(),
      suffixIcon: const Icon(Icons.search, color: AppColors.primary),
    );
  }
}

/* ---------------------------- PRODUCT CARD --------------------------- */

class _ProductCard extends StatelessWidget {
  const _ProductCard({required this.item});
  final ProductEntity item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.inputBorderGrey),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(12),
              ),
              child: AspectRatio(
                aspectRatio: 16 / 10,
                child: Image.network(
                  item.imageUrl,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) =>
                      const Center(child: Icon(Icons.image_not_supported)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.remove_red_eye_outlined,
                        size: 18,
                        color: AppColors.grey,
                      ),
                      const HorizontalSpace(6),
                      Text(
                        '${item.review.review} views',
                        style: const TextStyle(color: AppColors.grey),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_border),
                        splashRadius: 20,
                      ),
                    ],
                  ),
                  const VerticalSpace(4),
                  Text(
                    '${item.newPrice.toStringAsFixed(0)} ${item.priceCurrency}',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const VerticalSpace(4),
                  Text(
                    'More than 6 bedrooms · 2 Bathroom · 120 m2', // map your fields as needed
                    style: const TextStyle(color: AppColors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
