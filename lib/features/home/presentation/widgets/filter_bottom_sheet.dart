import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:property_sales/core/helpers/spacing.dart';
import 'package:property_sales/core/models/result.dart';
import 'package:property_sales/core/themes/app_colors.dart';
import 'package:property_sales/core/themes/text_styles.dart';
import 'package:property_sales/core/widgets/buttons/primary_button.dart';
import 'package:property_sales/core/widgets/text_fields/custom_text_field.dart';
import 'package:property_sales/features/home/domain/entites/category_entity.dart';
import 'package:property_sales/features/home/domain/entites/filter_entity.dart';
import 'package:property_sales/features/home/presentation/cubit/home_cubit.dart';

class FilterBottomSheet extends StatefulWidget {
  final List<CategoryEntity> categories;
  final FilterEntity currentFilter;
  final Function(FilterEntity) onApplyFilter;

  const FilterBottomSheet({
    super.key,
    required this.categories,
    required this.currentFilter,
    required this.onApplyFilter,
  });

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  late FilterEntity _filter;
  final TextEditingController _minPriceController = TextEditingController();
  final TextEditingController _maxPriceController = TextEditingController();
  String? _selectedCity;

  final List<String> _cities = [
    'Damascus',
    'Aleppo',
    'Homs',
    'Hama',
    'Latakia',
    'Tartus',
    'Daraa',
    'Deir ez-Zor',
    'Al-Hasakah',
    'Ar-Raqqah',
    'As-Suwayda',
    'Quneitra',
    'Idlib',
    'Rural Damascus',
  ];

  @override
  void initState() {
    super.initState();
    _filter = widget.currentFilter;
    _minPriceController.text = _filter.minPrice?.toString() ?? '';
    _maxPriceController.text = _filter.maxPrice?.toString() ?? '';
  }

  @override
  void dispose() {
    _minPriceController.dispose();
    _maxPriceController.dispose();
    super.dispose();
  }

  void _toggleCategory(int categoryId) {
    setState(() {
      final currentIds = List<int>.from(_filter.categoryIds);
      if (currentIds.contains(categoryId)) {
        currentIds.remove(categoryId);
      } else {
        currentIds.add(categoryId);
      }
      _filter = _filter.copyWith(categoryIds: currentIds);
    });
  }

  void _applyFilter() {
    final minPrice = double.tryParse(_minPriceController.text);
    final maxPrice = double.tryParse(_maxPriceController.text);

    final updatedFilter = _filter.copyWith(
      minPrice: minPrice,
      maxPrice: maxPrice,
    );

    widget.onApplyFilter(updatedFilter);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildHeader(),
          Flexible(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildCategoriesSection(),
                  const VerticalSpace(24),
                  _buildStateSection(),
                  const VerticalSpace(24),
                  _buildPriceSection(),
                  const VerticalSpace(40),
                  _buildApplyButton(),
                  const VerticalSpace(20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(width: 24), // for centering
          Text(
            'Filter',
            style: TextStyles.primaryText60020.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(Icons.close, size: 24, color: AppColors.grey),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoriesSection() {
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
        _buildCategoriesContent(),
      ],
    );
  }

  Widget _buildCategoriesContent() {
    final categoriesStatus = context
        .select<HomeCubit, Result<List<CategoryEntity>>>(
          (cubit) => cubit.state.categoriesStatus,
        );

    return categoriesStatus.when(
      loading: () => const Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 32),
          child: Column(
            children: [
              CircularProgressIndicator(),
              VerticalSpace(12),
              Text(
                'Loading categories...',
                style: TextStyle(color: AppColors.grey),
              ),
            ],
          ),
        ),
      ),
      success: (categories) => _buildCategoryChips(categories),
      failure: (error, _, errorMessage) => _buildErrorState(errorMessage),
      empty: () => _buildEmptyState(),
    );
  }

  Widget _buildCategoryChips(List<CategoryEntity> categories) {
    if (categories.isEmpty) {
      return _buildEmptyState();
    }

    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children: categories.map((category) {
        final isSelected = _filter.categoryIds.contains(category.id);
        return GestureDetector(
          onTap: () => _toggleCategory(category.id),
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
      }).toList(),
    );
  }

  Widget _buildErrorState(String? errorMessage) {
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
            onPressed: () {
              context.read<HomeCubit>().retryLoadCategories();
            },
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyState() {
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

  Widget _buildStateSection() {
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
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: AppColors.neutral200),
          ),
          child: DropdownButtonFormField<String>(
            value: _selectedCity,
            decoration: const InputDecoration(
              hintText: 'State',
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
            ),
            icon: const Icon(
              Icons.keyboard_arrow_down,
              color: AppColors.primary,
            ),
            items: _cities.map((city) {
              return DropdownMenuItem(value: city, child: Text(city));
            }).toList(),
            onChanged: (value) {
              setState(() {
                _selectedCity = value;
              });
            },
          ),
        ),
      ],
    );
  }

  Widget _buildPriceSection() {
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
        Row(
          children: [
            Expanded(
              child: CustomTextField(
                controller: _minPriceController,
                hintText: 'From',
                keyboardType: TextInputType.number,
              ),
            ),
            const HorizontalSpace(16),
            Expanded(
              child: CustomTextField(
                controller: _maxPriceController,
                hintText: 'To',
                keyboardType: TextInputType.number,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildApplyButton() {
    return SizedBox(
      width: double.infinity,
      child: PrimaryButton(text: 'Apply', onPressed: _applyFilter),
    );
  }
}
