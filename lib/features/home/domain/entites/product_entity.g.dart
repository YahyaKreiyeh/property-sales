// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductEntity _$ProductEntityFromJson(Map<String, dynamic> json) =>
    _ProductEntity(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      newPrice: (json['new_price'] as num).toDouble(),
      priceCurrency: json['price_currency'] as String,
      imageUrl: json['product_main_image'] as String,
      review: ReviewSummary.fromJson(json['review'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductEntityToJson(_ProductEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'new_price': instance.newPrice,
      'price_currency': instance.priceCurrency,
      'product_main_image': instance.imageUrl,
      'review': instance.review,
    };

_ReviewSummary _$ReviewSummaryFromJson(Map<String, dynamic> json) =>
    _ReviewSummary(review: (json['review'] as num?)?.toDouble() ?? 0.0);

Map<String, dynamic> _$ReviewSummaryToJson(_ReviewSummary instance) =>
    <String, dynamic>{'review': instance.review};

_ProductPage _$ProductPageFromJson(Map<String, dynamic> json) => _ProductPage(
  data: (json['data'] as List<dynamic>)
      .map((e) => ProductEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
  length: (json['length'] as num).toInt(),
  totalPages: (json['total_pages'] as num).toInt(),
);

Map<String, dynamic> _$ProductPageToJson(_ProductPage instance) =>
    <String, dynamic>{
      'data': instance.data,
      'length': instance.length,
      'total_pages': instance.totalPages,
    };
