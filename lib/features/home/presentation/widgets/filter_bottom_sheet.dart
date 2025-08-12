import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:property_sales/core/constants/constants.dart';
import 'package:property_sales/core/helpers/spacing.dart';
import 'package:property_sales/core/models/result.dart';
import 'package:property_sales/core/routing/routes_extension.dart';
import 'package:property_sales/core/themes/app_colors.dart';
import 'package:property_sales/core/themes/text_styles.dart';
import 'package:property_sales/core/widgets/buttons/primary_button.dart';
import 'package:property_sales/core/widgets/text_fields/custom_text_field.dart';
import 'package:property_sales/features/home/domain/entites/category_entity.dart';
import 'package:property_sales/features/home/domain/entites/filter_entity.dart';
import 'package:property_sales/features/home/presentation/cubit/home_cubit.dart';

class FilterBottomSheet extends StatelessWidget {
  const FilterBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(horizontalPadding),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [_Header(), _Filters(), _SubmitButton()],
        ),
      ),
    );
  }
}

class _SubmitButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [_ApplyButton(), const VerticalSpace(20)]);
  }
}

class _Filters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _Categories(),
            const VerticalSpace(24),
            _State(),
            const VerticalSpace(24),
            _Price(),
            const VerticalSpace(40),
          ],
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Text(
            'Filter',
            style: TextStyles.primaryText60020.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Positioned(
          right: 0,
          child: GestureDetector(
            onTap: () => context.pop(),
            child: const Icon(Icons.close, size: 24, color: AppColors.grey),
          ),
        ),
      ],
    );
  }
}

class _Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Categories',
          style: TextStyles.primaryText50018.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const VerticalSpace(16),
        _CategoriesChips(),
      ],
    );
  }
}

class _CategoriesChips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final categoriesStatus = context
        .select<HomeCubit, Result<List<CategoryEntity>>>(
          (cubit) => cubit.state.categoriesStatus,
        );

    return categoriesStatus.when(
      loading: () => _CategoriesLoading(),
      success: (categories) => _CategoriesGrid(categories: categories),
      failure: (error, _, errorMessage) =>
          _CategoriesError(errorMessage: errorMessage),
      empty: () => _CategoriesEmpty(),
    );
  }
}

class _CategoriesLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 32),
        child: CircularProgressIndicator(),
      ),
    );
  }
}

class _CategoriesGrid extends StatelessWidget {
  const _CategoriesGrid({required this.categories});
  final List<CategoryEntity> categories;

  @override
  Widget build(BuildContext context) {
    if (categories.isEmpty) return _CategoriesEmpty();

    final selectedCategoryIds = context.select<HomeCubit, List<int>>(
      (cubit) => cubit.state.filterDraft.categoryIds,
    );

    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children: categories.map((category) {
        final isSelected = selectedCategoryIds.contains(category.id);
        return _CategoryChip(
          category: category,
          isSelected: isSelected,
          onTap: () => context.read<HomeCubit>().toggleCategory(category.id),
        );
      }).toList(),
    );
  }
}

class _CategoryChip extends StatelessWidget {
  const _CategoryChip({
    required this.category,
    required this.isSelected,
    required this.onTap,
  });

  final CategoryEntity category;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected
              ? AppColors.primary.withValues(alpha: 0.1)
              : AppColors.neutral150,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected ? AppColors.primary : Colors.transparent,
          ),
        ),
        child: Text(
          category.name,
          style: TextStyles.primary50014.copyWith(
            color: isSelected ? AppColors.primary : AppColors.grey,
          ),
        ),
      ),
    );
  }
}

class _CategoriesError extends StatelessWidget {
  const _CategoriesError({required this.errorMessage});
  final String? errorMessage;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const Icon(Icons.error_outline, color: AppColors.grey, size: 32),
          const VerticalSpace(8),
          Text(
            errorMessage ?? 'Failed to load categories',
            style: TextStyles.greyText40015,
            textAlign: TextAlign.center,
          ),
          const VerticalSpace(12),
          TextButton(
            onPressed: () => context.read<HomeCubit>().retryLoadCategories(),
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }
}

class _CategoriesEmpty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const Icon(Icons.category_outlined, color: AppColors.grey, size: 32),
          const VerticalSpace(8),
          Text(
            'No categories available',
            style: TextStyles.greyText40015,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class _State extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'State',
          style: TextStyles.primaryText50018.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const VerticalSpace(12),
        _StateDropdown(),
      ],
    );
  }
}

class _StateDropdown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final selectedCity = context.select<HomeCubit, String?>(
      (cubit) => cubit.state.selectedCity,
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.neutral200),
      ),
      child: DropdownButtonFormField<String>(
        value: selectedCity,
        decoration: const InputDecoration(
          hintText: 'State',
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
        icon: const Icon(Icons.keyboard_arrow_down, color: AppColors.primary),
        items: cities.map((city) {
          return DropdownMenuItem(value: city, child: Text(city));
        }).toList(),
        onChanged: (value) => context.read<HomeCubit>().selectCity(value),
      ),
    );
  }
}

class _Price extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Price',
              style: TextStyles.primaryText50018.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const Spacer(),
            Text('SP', style: TextStyles.primaryText40013),
          ],
        ),
        const VerticalSpace(12),
        _PriceInputs(),
      ],
    );
  }
}

class _PriceInputs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();
    final filterDraft = context.select<HomeCubit, FilterEntity>(
      (cubit) => cubit.state.filterDraft,
    );

    return Row(
      children: [
        Expanded(
          child: CustomTextField(
            initialValue: filterDraft.minPrice?.toString() ?? '',
            hintText: 'From',
            keyboardType: TextInputType.number,
            onChanged: cubit.updateMinPrice,
          ),
        ),
        const HorizontalSpace(16),
        Expanded(
          child: CustomTextField(
            initialValue: filterDraft.maxPrice?.toString() ?? '',
            hintText: 'To',
            keyboardType: TextInputType.number,
            onChanged: cubit.updateMaxPrice,
          ),
        ),
      ],
    );
  }
}

class _ApplyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PrimaryButton(
      text: 'Apply',
      onPressed: () {
        context.read<HomeCubit>().applyFilter();
        context.pop();
      },
    );
  }
}
