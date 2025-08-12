import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:property_sales/core/constants/constants.dart';
import 'package:property_sales/core/constants/enums.dart';
import 'package:property_sales/core/helpers/formatters.dart';
import 'package:property_sales/core/helpers/shared_pref_helper.dart';
import 'package:property_sales/core/helpers/spacing.dart';
import 'package:property_sales/core/models/result.dart';
import 'package:property_sales/core/routing/routes.dart';
import 'package:property_sales/core/routing/routes_extension.dart';
import 'package:property_sales/core/style/assets/assets.gen.dart';
import 'package:property_sales/core/themes/app_colors.dart';
import 'package:property_sales/core/themes/text_styles.dart';
import 'package:property_sales/core/widgets/text_fields/custom_text_field.dart';
import 'package:property_sales/features/home/domain/entites/product_entity.dart';
import 'package:property_sales/features/home/presentation/cubit/home_cubit.dart';
import 'package:property_sales/features/home/presentation/cubit/home_state.dart';
import 'package:property_sales/features/home/presentation/widgets/filter_bottom_sheet.dart';
import 'package:property_sales/features/snackbar/bloc/snackbar_bloc.dart';

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
        actions: [
          const Badge(
            label: Text('3', style: TextStyle(color: AppColors.whiteText)),
            child: Icon(
              Icons.notifications_outlined,
              color: AppColors.grey,
              size: 30,
            ),
          ),
          const HorizontalSpace(12),
          Builder(
            builder: (context) => GestureDetector(
              onTap: () => Scaffold.of(context).openEndDrawer(),
              child: const Icon(Icons.menu, color: AppColors.grey, size: 30),
            ),
          ),
          const HorizontalSpace(8),
        ],
      ),
      endDrawer: const _HomeDrawer(),
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
          _SearchBox(),
          _ResultsHeader(),
          _SortRow(),
          _ProductsList(),
          _HomeBlocListener(),
        ],
      ),
    );
  }
}

class _ProductsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();

    final vm = context.select(
      (HomeCubit c) => (
        items: c.state.items,
        isLoadingMore: c.state.isLoadingMore,
        isLoading: c.state.status.isLoading,
        isFailure: c.state.status.isFailure,
        failureMessage: c.state.status.failureMessage,
        backendMessage: c.state.status.successValue?.message,
        searchTerm: c.state.searchTerm,
        loadMoreError: c.state.loadMoreError,
      ),
    );

    Widget child;
    if (vm.isLoading && vm.items.isEmpty) {
      child = const Center(child: CircularProgressIndicator());
    } else if (vm.isFailure && vm.items.isEmpty) {
      child = _ErrorRetry(
        icon: Icons.error_outline,
        message: (vm.failureMessage?.isNotEmpty ?? false)
            ? vm.failureMessage!
            : 'Couldn’t load products',
        actionLabel: 'Retry',
        onAction: () => cubit.search(),
      );
    } else if (vm.items.isEmpty) {
      child = _ErrorRetry(
        icon: Icons.search_off,
        message: (vm.backendMessage?.isNotEmpty ?? false)
            ? vm.backendMessage!
            : 'No products found',
      );
    } else {
      child = NotificationListener<ScrollNotification>(
        onNotification: (n) {
          if (n.metrics.pixels >= n.metrics.maxScrollExtent - 200) {
            cubit.loadMoreIfPossible();
          }
          return false;
        },
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 16),
          itemCount:
              vm.items.length +
              ((vm.isLoadingMore || vm.loadMoreError != null) ? 1 : 0),
          separatorBuilder: (_, _) => const VerticalSpace(16),
          itemBuilder: (context, index) {
            if (index >= vm.items.length) {
              if (vm.isLoadingMore) {
                return const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Center(child: CircularProgressIndicator()),
                );
              }
              if (vm.loadMoreError != null) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: _ErrorRetry(
                    icon: Icons.warning_amber_outlined,
                    message: vm.loadMoreError!,
                    actionLabel: 'Retry',
                  ),
                );
              }
            }

            final p = vm.items[index];
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
    final cubit = context.read<HomeCubit>();
    final vm = context.select(
      (HomeCubit c) => (
        total: c.state.status.successValue?.length ?? 0,
        searchTerm: c.state.searchTerm,
        categories: c.state.categories,
        currentFilter: c.state.currentFilter,
      ),
    );

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
                      text: 'Results${vm.searchTerm.isNotEmpty ? ' for ' : ''}',
                    ),
                    if (vm.searchTerm.isNotEmpty)
                      TextSpan(
                        text: vm.searchTerm,
                        style: TextStyles.primaryText60020,
                      ),
                    TextSpan(text: ' (${vm.total})'),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () => _showFilterBottomSheet(
                context,
                cubit,
                vm.categories,
                vm.currentFilter,
              ),
              child: Icon(Icons.filter_alt_outlined, color: AppColors.primary),
            ),
          ],
        ),
        const VerticalSpace(16),
      ],
    );
  }

  void _showFilterBottomSheet(
    BuildContext context,
    HomeCubit cubit,
    categories,
    currentFilter,
  ) {
    cubit.loadCategoriesIfNeeded();
    cubit.initializeFilterDraft();

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * 0.9,
        ),
        child: BlocProvider.value(
          value: cubit,
          child: const FilterBottomSheet(),
        ),
      ),
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
    final formatter = NumberFormat.compact();

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
                  Expanded(
                    child: Text(
                      '${formatter.format(item.viewCount)} views',
                      style: TextStyles.greyText40015,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () =>
                        context.read<HomeCubit>().toggleFavorite(item.id),
                    icon: Icon(
                      item.isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: item.isFavorite ? Colors.red : AppColors.grey,
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
                item.name,
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

class _HomeBlocListener extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeCubit, HomeState>(
      listenWhen: (p, c) => p.status != c.status,
      listener: (context, state) {
        state.status.when(
          success: (_) {},
          failure: (error, _, errorMessage) {
            context.read<SnackbarBloc>().add(
              AddSnackbarEvent(
                message: errorMessage ?? 'Something went wrong',
                type: SnackbarType.error,
              ),
            );
          },
          loading: () {},
          empty: () {},
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}

class _ErrorRetry extends StatelessWidget {
  const _ErrorRetry({
    required this.message,
    this.icon,
    this.actionLabel,
    this.onAction,
  });

  final String message;
  final IconData? icon;
  final String? actionLabel;
  final VoidCallback? onAction;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) Icon(icon, size: 40, color: AppColors.grey),
            if (icon != null) const VerticalSpace(12),
            Text(
              message,
              style: TextStyles.greyText40015,
              textAlign: TextAlign.center,
            ),
            if (actionLabel != null && onAction != null) ...[
              const VerticalSpace(12),
              TextButton(onPressed: onAction, child: Text(actionLabel!)),
            ],
          ],
        ),
      ),
    );
  }
}

class _HomeDrawer extends StatelessWidget {
  const _HomeDrawer();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.white,
      child: Column(
        children: [
          DrawerHeader(child: Assets.images.appIcon.image(fit: BoxFit.contain)),
          const Spacer(),
          ListTile(
            leading: const Icon(Icons.logout, color: AppColors.grey),
            title: Text('Logout', style: TextStyles.primaryText60017),
            onTap: () => _handleLogout(context),
          ),
          const VerticalSpace(16),
        ],
      ),
    );
  }

  Future<void> _handleLogout(BuildContext context) async {
    context.pop();

    await SharedPrefHelper.clearAllSecuredData();

    if (context.mounted) {
      context.pushNamedAndRemoveUntil(
        Routes.login,
        predicate: (route) => false,
      );
    }
  }
}
