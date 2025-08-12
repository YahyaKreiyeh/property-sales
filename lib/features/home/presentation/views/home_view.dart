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
import 'package:property_sales/features/home/presentation/cubit/home_state.dart';

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
    final cubit = context.read<HomeCubit>();

    return NotificationListener<ScrollNotification>(
      onNotification: (n) {
        if (n.metrics.pixels >= n.metrics.maxScrollExtent - 200) {
          cubit.loadMoreIfPossible();
        }
        return false;
      },
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: VerticalSpace(16)),
          SliverToBoxAdapter(
            child: _SearchBox(
              hintText: 'Search',
              onChanged: cubit.searchChanged,
              onEditingComplete: cubit.submitSearch,
            ),
          ),
          const SliverToBoxAdapter(child: VerticalSpace(12)),
          BlocBuilder<HomeCubit, HomeState>(
            buildWhen: (p, c) =>
                p.items != c.items ||
                p.status != c.status ||
                p.isLoadingMore != c.isLoadingMore,
            builder: (context, state) {
              // loading state (first page)
              final isInitialLoading = state.status.maybeWhen(
                loading: () => true,
                orElse: () => false,
              );

              if (isInitialLoading && state.items.isEmpty) {
                return const SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 40),
                    child: Center(child: CircularProgressIndicator()),
                  ),
                );
              }

              if (state.items.isEmpty && state.searchTerm.isNotEmpty) {
                return const SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 40),
                    child: Center(child: Text('No results')),
                  ),
                );
              }

              return SliverList.separated(
                itemCount: state.items.length + (state.isLoadingMore ? 1 : 0),
                separatorBuilder: (_, __) =>
                    const Divider(height: 1, color: AppColors.inputBorderGrey),
                itemBuilder: (context, index) {
                  if (index >= state.items.length) {
                    // pagination loader at the end
                    return const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: Center(child: CircularProgressIndicator()),
                    );
                  }
                  final p = state.items[index];
                  return _ProductTile(item: p);
                },
              );
            },
          ),
          const SliverToBoxAdapter(child: VerticalSpace(24)),
        ],
      ),
    );
  }
}

class _SearchBox extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final void Function()? onEditingComplete;
  final void Function(String)? onChanged;
  final double elevation;

  const _SearchBox({
    super.key,
    required this.hintText,
    this.onEditingComplete,
    this.controller,
    this.elevation = 4,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
    child: CustomTextField(
      controller: controller,
      onEditingComplete: onEditingComplete,
      onTapOutside: (_) => FocusScope.of(context).unfocus(),
      onChanged: onChanged,
      hintText: hintText,
      suffixIcon: const Icon(Icons.search, color: AppColors.primary),
    ),
  );
}

class _ProductTile extends StatelessWidget {
  const _ProductTile({required this.item});
  final ProductEntity item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.network(
          item.imageUrl,
          width: 56,
          height: 56,
          fit: BoxFit.cover,
          errorBuilder: (_, __, ___) => const Icon(Icons.image_not_supported),
        ),
      ),
      title: Text(item.name, maxLines: 1, overflow: TextOverflow.ellipsis),
      subtitle: Text(
        '${item.newPrice.toStringAsFixed(0)} ${item.priceCurrency}'
        '${item.newPrice < item.price ? '  •  was ${item.price.toStringAsFixed(0)}' : ''}',
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.star, size: 16, color: AppColors.primary),
          const HorizontalSpace(4),
          Text(item.review.review.toStringAsFixed(1)),
        ],
      ),
      onTap: () {
        // TODO: navigate to product details
      },
    );
  }
}
