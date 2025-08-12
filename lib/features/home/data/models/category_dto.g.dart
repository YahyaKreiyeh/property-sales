// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CategoryDto _$CategoryDtoFromJson(Map<String, dynamic> json) => _CategoryDto(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  smallImageUrl: json['small_image_url'] as String?,
);

Map<String, dynamic> _$CategoryDtoToJson(_CategoryDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'small_image_url': instance.smallImageUrl,
    };

_CategoriesResponse _$CategoriesResponseFromJson(Map<String, dynamic> json) =>
    _CategoriesResponse(
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => CategoryDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      message: json['message'] as String?,
      all: (json['all'] as num?)?.toInt(),
      totalpages: (json['totalpages'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CategoriesResponseToJson(_CategoriesResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'all': instance.all,
      'totalpages': instance.totalpages,
    };
