import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:property_sales/core/constants/constants.dart';
import 'package:property_sales/core/helpers/formatters.dart';
import 'package:property_sales/core/helpers/spacing.dart';
import 'package:property_sales/core/models/result.dart';
import 'package:property_sales/core/style/assets/assets.gen.dart';
import 'package:property_sales/core/themes/app_colors.dart';
import 'package:property_sales/core/themes/text_styles.dart';
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
        children: [_SearchBox(), _ResultsHeader(), _SortRow(), _ProductsList()],
      ),
    );
  }
}

class _ProductsList extends StatelessWidget {
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

    Widget child;
    if (isInitialLoading && items.isEmpty) {
      child = const Center(child: CircularProgressIndicator());
    } else if (items.isEmpty && searchTerm.isNotEmpty) {
      child = const Center(child: Text('No results'));
    } else {
      child = NotificationListener<ScrollNotification>(
        onNotification: (n) {
          if (n.metrics.pixels >= n.metrics.maxScrollExtent - 400) {
            cubit.loadMoreIfPossible();
          }
          return false;
        },
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 16),
          itemCount: items.length + (isLoadingMore ? 1 : 0),
          separatorBuilder: (_, _) => const VerticalSpace(16),
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

    return Expanded(child: child);
  }
}

class _ResultsHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final total = context.select((HomeCubit c) => c.state.totalLength);
    final searchTerm = context.select((HomeCubit c) => c.state.searchTerm);
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: RichText(
                text: TextSpan(
                  style: TextStyles.primaryText40020,
                  children: [
                    TextSpan(
                      text: 'Results${searchTerm.isNotEmpty ? ' for ' : ''}',
                    ),
                    if (searchTerm.isNotEmpty)
                      TextSpan(
                        text: searchTerm,
                        style: TextStyles.primaryText60020,
                      ),
                    TextSpan(text: ' ($total)'),
                  ],
                ),
              ),
            ),
            Icon(Icons.filter_alt_outlined, color: AppColors.primary),
          ],
        ),
        const VerticalSpace(16),
      ],
    );
  }
}

class _SortRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text('Sort by '),
            Text('Relevant ', style: TextStyles.primaryText60017),
            Icon(Icons.keyboard_arrow_down, size: 18),
          ],
        ),
        VerticalSpace(4),
      ],
    );
  }
}

class _SearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();
    return Column(
      children: [
        const VerticalSpace(16),
        CustomTextField(
          hintText: 'Search',
          textStyle: TextStyles.primaryText60017,
          onChanged: cubit.searchChanged,
          onTapOutside: (_) => FocusScope.of(context).unfocus(),
          suffixIcon: const Icon(Icons.search, color: AppColors.primary),
        ),
        const VerticalSpace(16),
      ],
    );
  }
}

class _ProductCard extends StatelessWidget {
  const _ProductCard({required this.item});
  final ProductEntity item;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          child: AspectRatio(
            aspectRatio: 16 / 10,
            child: Image.network(
              item.imageUrl,
              fit: BoxFit.cover,
              errorBuilder: (_, _, _) =>
                  const Center(child: Icon(Icons.image_not_supported)),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.remove_red_eye_outlined,
                    size: 25,
                    color: AppColors.grey,
                  ),
                  const HorizontalSpace(6),
                  //TODO: adjust this to display view count
                  //TODO: round numbers like youtube and facebook
                  Expanded(
                    child: Text(
                      '${item.review.review} views',
                      style: TextStyles.greyText40015,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                  const Spacer(),
                  // TODO: implement favorite functionality
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_border,
                      color: AppColors.grey,
                    ),
                    splashRadius: 20,
                  ),
                ],
              ),
              const VerticalSpace(4),
              RichText(
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: AppFormatter.formatPrice(item.newPrice),
                      style: TextStyles.primaryText70022,
                    ),
                    TextSpan(
                      text: ' ${item.priceCurrency}',
                      style: TextStyles.primaryText40022,
                    ),
                  ],
                ),
              ),
              const VerticalSpace(4),
              Text(
                'More than 6 bedrooms · 2 Bathroom · 120 m2',
                style: TextStyles.greyText40015,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
