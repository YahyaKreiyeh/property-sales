import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:property_sales/core/models/result.dart';
import 'package:property_sales/features/home/domain/entites/product_entity.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    @Default(Result.empty()) Result status,
    @Default('') String searchTerm,
    @Default(1) int page,
    @Default(10) int limit,
    @Default(0) int totalPages,
    @Default(0) int totalLength,
    @Default(<ProductEntity>[]) List<ProductEntity> items,
    @Default(false) bool isLoadingMore,
    String? errorMessage,
  }) = _HomeState;
}
