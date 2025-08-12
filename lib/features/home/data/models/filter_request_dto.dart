import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_request_dto.freezed.dart';
part 'filter_request_dto.g.dart';

@freezed
abstract class FilterRequestDto with _$FilterRequestDto {
  const factory FilterRequestDto({
    @JsonKey(name: 'website_type') @Default(0) int websiteType,
    @JsonKey(name: 'search_term') @Default('') String searchTerm,
    @Default(1) int page,
    @Default(10) int limit,
    @JsonKey(name: 'min_price') double? minPrice,
    @JsonKey(name: 'max_price') double? maxPrice,
    @JsonKey(name: 'category_ids') @Default([]) List<int> categoryIds,
    @JsonKey(name: 'city_id') int? cityId,
  }) = _FilterRequestDto;

  factory FilterRequestDto.fromJson(Map<String, dynamic> json) =>
      _$FilterRequestDtoFromJson(json);
}

@freezed
abstract class CityDto with _$CityDto {
  const factory CityDto({
    required int id,
    required String name,
    @JsonKey(name: 'name_ar') String? nameAr,
  }) = _CityDto;

  factory CityDto.fromJson(Map<String, dynamic> json) =>
      _$CityDtoFromJson(json);
}
