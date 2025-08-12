import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:property_sales/core/models/result.dart';
import 'package:property_sales/features/home/domain/entites/category_entity.dart';
import 'package:property_sales/features/home/domain/entites/filter_entity.dart';
import 'package:property_sales/features/home/domain/entites/product_entity.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    @Default(Result.empty()) Result<ProductPage> status,
    @Default(Result.empty()) Result<CategoryPage> categoriesStatus,
    @Default('') String searchTerm,
    @Default(1) int page,
    @Default(10) int limit,
    @Default(<ProductEntity>[]) List<ProductEntity> items,
    @Default(<CategoryEntity>[]) List<CategoryEntity> categories,
    @Default(false) bool isLoadingMore,
    String? loadMoreError,
    @Default(FilterEntity()) FilterEntity currentFilter,
    @Default(FilterEntity()) FilterEntity filterDraft,
    String? selectedCity,
  }) = _HomeState;
}
