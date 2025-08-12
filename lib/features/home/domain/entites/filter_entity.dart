import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_entity.freezed.dart';

@freezed
abstract class FilterEntity with _$FilterEntity {
  const factory FilterEntity({
    @Default(0) int websiteType,
    @Default('') String searchTerm,
    @Default(1) int page,
    @Default(10) int limit,
    double? minPrice,
    double? maxPrice,
    @Default([]) List<int> categoryIds,
    int? cityId,
  }) = _FilterEntity;
}

@freezed
abstract class CityEntity with _$CityEntity {
  const factory CityEntity({
    required int id,
    required String name,
    String? nameAr,
  }) = _CityEntity;
}
