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
