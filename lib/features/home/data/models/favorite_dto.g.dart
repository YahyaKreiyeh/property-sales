// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FavoriteRequestDto _$FavoriteRequestDtoFromJson(Map<String, dynamic> json) =>
    _FavoriteRequestDto(
      productId: (json['product_id'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$FavoriteRequestDtoToJson(_FavoriteRequestDto instance) =>
    <String, dynamic>{'product_id': instance.productId};

_FavoriteResponseDto _$FavoriteResponseDtoFromJson(Map<String, dynamic> json) =>
    _FavoriteResponseDto(
      message: json['message'] as String?,
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$FavoriteResponseDtoToJson(
  _FavoriteResponseDto instance,
) => <String, dynamic>{
  'message': instance.message,
  'success': instance.success,
};
