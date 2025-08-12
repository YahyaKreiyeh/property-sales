// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductPageDto _$ProductPageDtoFromJson(Map<String, dynamic> json) =>
    _ProductPageDto(
      data: (json['data'] as List<dynamic>)
          .map((e) => ProductDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      length: (json['length'] as num).toInt(),
      totalPages: (json['total_pages'] as num).toInt(),
    );

Map<String, dynamic> _$ProductPageDtoToJson(_ProductPageDto instance) =>
    <String, dynamic>{
      'data': instance.data,
      'length': instance.length,
      'total_pages': instance.totalPages,
    };

_ProductDto _$ProductDtoFromJson(Map<String, dynamic> json) => _ProductDto(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  price: json['price'] as num,
  newPrice: json['new_price'] as num,
  priceCurrency: json['price_currency'] as String,
  imageUrl: json['product_main_image'] as String,
  review: ReviewSummaryDto.fromJson(json['review'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ProductDtoToJson(_ProductDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'new_price': instance.newPrice,
      'price_currency': instance.priceCurrency,
      'product_main_image': instance.imageUrl,
      'review': instance.review,
    };

_ReviewSummaryDto _$ReviewSummaryDtoFromJson(Map<String, dynamic> json) =>
    _ReviewSummaryDto(review: json['review'] as num? ?? 0);

Map<String, dynamic> _$ReviewSummaryDtoToJson(_ReviewSummaryDto instance) =>
    <String, dynamic>{'review': instance.review};
