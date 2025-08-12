// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CategoryEntity _$CategoryEntityFromJson(Map<String, dynamic> json) =>
    _CategoryEntity(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      smallImageUrl: json['smallImageUrl'] as String?,
    );

Map<String, dynamic> _$CategoryEntityToJson(_CategoryEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'smallImageUrl': instance.smallImageUrl,
    };

_CategoryPage _$CategoryPageFromJson(Map<String, dynamic> json) =>
    _CategoryPage(
      data: (json['data'] as List<dynamic>)
          .map((e) => CategoryEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      length: (json['length'] as num?)?.toInt() ?? 0,
      totalPages: (json['total_pages'] as num?)?.toInt() ?? 0,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$CategoryPageToJson(_CategoryPage instance) =>
    <String, dynamic>{
      'data': instance.data,
      'length': instance.length,
      'total_pages': instance.totalPages,
      'message': instance.message,
    };
