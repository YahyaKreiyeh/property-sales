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
      template: TemplateRef.fromJson(
        json['template_id'] as Map<String, dynamic>,
      ),
      quantityPer: json['quantity_per'] as String,
      isFavorite: json['is_favorite'] as bool,
      viewCount: (json['view_count'] as num).toInt(),
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
      'template_id': instance.template,
      'quantity_per': instance.quantityPer,
      'is_favorite': instance.isFavorite,
      'view_count': instance.viewCount,
      'product_main_image': instance.imageUrl,
      'review': instance.review,
    };

_TemplateRef _$TemplateRefFromJson(Map<String, dynamic> json) =>
    _TemplateRef(id: (json['id'] as num).toInt(), name: json['name'] as String);

Map<String, dynamic> _$TemplateRefToJson(_TemplateRef instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};

_ReviewSummary _$ReviewSummaryFromJson(Map<String, dynamic> json) =>
    _ReviewSummary(
      review: (json['review'] as num?)?.toDouble() ?? 0.0,
      reviewIds:
          (json['review_ids'] as List<dynamic>?)
              ?.map((e) => ReviewItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ReviewItem>[],
    );

Map<String, dynamic> _$ReviewSummaryToJson(_ReviewSummary instance) =>
    <String, dynamic>{
      'review': instance.review,
      'review_ids': instance.reviewIds,
    };

_ReviewItem _$ReviewItemFromJson(Map<String, dynamic> json) => _ReviewItem(
  reviewId: (json['review_id'] as num).toInt(),
  reviewText: json['review_text'] as String,
  user: ReviewUser.fromJson(json['user'] as Map<String, dynamic>),
  date: json['date'] as String,
  starsCount: (json['stars_count'] as num).toDouble(),
);

Map<String, dynamic> _$ReviewItemToJson(_ReviewItem instance) =>
    <String, dynamic>{
      'review_id': instance.reviewId,
      'review_text': instance.reviewText,
      'user': instance.user,
      'date': instance.date,
      'stars_count': instance.starsCount,
    };

_ReviewUser _$ReviewUserFromJson(Map<String, dynamic> json) =>
    _ReviewUser(id: (json['id'] as num).toInt(), name: json['name'] as String);

Map<String, dynamic> _$ReviewUserToJson(_ReviewUser instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};

_ProductPage _$ProductPageFromJson(Map<String, dynamic> json) => _ProductPage(
  data: (json['data'] as List<dynamic>)
      .map((e) => ProductEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
  length: (json['length'] as num).toInt(),
  totalPages: (json['total_pages'] as num).toInt(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$ProductPageToJson(_ProductPage instance) =>
    <String, dynamic>{
      'data': instance.data,
      'length': instance.length,
      'total_pages': instance.totalPages,
      'message': instance.message,
    };
