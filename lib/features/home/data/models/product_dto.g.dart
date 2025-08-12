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
  template: TemplateRefDto.fromJson(
    json['template_id'] as Map<String, dynamic>,
  ),
  quantityPer: json['quantity_per'] as String,
  isFavorite: json['is_favorite'] as bool,
  viewCount: (json['view_count'] as num).toInt(),
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
      'template_id': instance.template,
      'quantity_per': instance.quantityPer,
      'is_favorite': instance.isFavorite,
      'view_count': instance.viewCount,
      'product_main_image': instance.imageUrl,
      'review': instance.review,
    };

_TemplateRefDto _$TemplateRefDtoFromJson(Map<String, dynamic> json) =>
    _TemplateRefDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$TemplateRefDtoToJson(_TemplateRefDto instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};

_ReviewSummaryDto _$ReviewSummaryDtoFromJson(Map<String, dynamic> json) =>
    _ReviewSummaryDto(
      review: json['review'] as num? ?? 0,
      reviewIds:
          (json['review_ids'] as List<dynamic>?)
              ?.map((e) => ReviewItemDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ReviewItemDto>[],
    );

Map<String, dynamic> _$ReviewSummaryDtoToJson(_ReviewSummaryDto instance) =>
    <String, dynamic>{
      'review': instance.review,
      'review_ids': instance.reviewIds,
    };

_ReviewItemDto _$ReviewItemDtoFromJson(Map<String, dynamic> json) =>
    _ReviewItemDto(
      reviewId: (json['review_id'] as num).toInt(),
      reviewText: json['review_text'] as String,
      user: ReviewUserDto.fromJson(json['user'] as Map<String, dynamic>),
      date: json['date'] as String,
      starsCount: json['stars_count'] as num,
    );

Map<String, dynamic> _$ReviewItemDtoToJson(_ReviewItemDto instance) =>
    <String, dynamic>{
      'review_id': instance.reviewId,
      'review_text': instance.reviewText,
      'user': instance.user,
      'date': instance.date,
      'stars_count': instance.starsCount,
    };

_ReviewUserDto _$ReviewUserDtoFromJson(Map<String, dynamic> json) =>
    _ReviewUserDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$ReviewUserDtoToJson(_ReviewUserDto instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};
