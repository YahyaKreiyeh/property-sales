// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FilterRequestDto _$FilterRequestDtoFromJson(Map<String, dynamic> json) =>
    _FilterRequestDto(
      websiteType: (json['website_type'] as num?)?.toInt() ?? 0,
      searchTerm: json['search_term'] as String? ?? '',
      page: (json['page'] as num?)?.toInt() ?? 1,
      limit: (json['limit'] as num?)?.toInt() ?? 10,
      minPrice: (json['min_price'] as num?)?.toDouble(),
      maxPrice: (json['max_price'] as num?)?.toDouble(),
      categoryIds:
          (json['category_ids'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
      cityId: (json['city_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$FilterRequestDtoToJson(_FilterRequestDto instance) =>
    <String, dynamic>{
      'website_type': instance.websiteType,
      'search_term': instance.searchTerm,
      'page': instance.page,
      'limit': instance.limit,
      'min_price': instance.minPrice,
      'max_price': instance.maxPrice,
      'category_ids': instance.categoryIds,
      'city_id': instance.cityId,
    };

_CityDto _$CityDtoFromJson(Map<String, dynamic> json) => _CityDto(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  nameAr: json['name_ar'] as String?,
);

Map<String, dynamic> _$CityDtoToJson(_CityDto instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'name_ar': instance.nameAr,
};
