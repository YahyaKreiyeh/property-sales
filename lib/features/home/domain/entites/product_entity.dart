import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_entity.freezed.dart';
part 'product_entity.g.dart';

@freezed
abstract class ProductEntity with _$ProductEntity {
  const factory ProductEntity({
    required int id,
    required String name,
    required double price,
    @JsonKey(name: 'new_price') required double newPrice,
    @JsonKey(name: 'price_currency') required String priceCurrency,
    @JsonKey(name: 'template_id') required TemplateRef template,
    @JsonKey(name: 'quantity_per') required String quantityPer,
    @JsonKey(name: 'is_favorite') required bool isFavorite,
    @JsonKey(name: 'view_count') required int viewCount,
    @JsonKey(name: 'product_main_image') required String imageUrl,
    @JsonKey(name: 'review') required ReviewSummary review,
  }) = _ProductEntity;

  factory ProductEntity.fromJson(Map<String, dynamic> json) =>
      _$ProductEntityFromJson(json);
}

@freezed
abstract class TemplateRef with _$TemplateRef {
  const factory TemplateRef({required int id, required String name}) =
      _TemplateRef;

  factory TemplateRef.fromJson(Map<String, dynamic> json) =>
      _$TemplateRefFromJson(json);
}

@freezed
abstract class ReviewSummary with _$ReviewSummary {
  const factory ReviewSummary({
    @Default(0.0) double review,
    @JsonKey(name: 'review_ids')
    @Default(<ReviewItem>[])
    List<ReviewItem> reviewIds,
  }) = _ReviewSummary;

  factory ReviewSummary.fromJson(Map<String, dynamic> json) =>
      _$ReviewSummaryFromJson(json);
}

@freezed
abstract class ReviewItem with _$ReviewItem {
  const factory ReviewItem({
    @JsonKey(name: 'review_id') required int reviewId,
    @JsonKey(name: 'review_text') required String reviewText,
    required ReviewUser user,
    required String date,
    @JsonKey(name: 'stars_count') required double starsCount,
  }) = _ReviewItem;

  factory ReviewItem.fromJson(Map<String, dynamic> json) =>
      _$ReviewItemFromJson(json);
}

@freezed
abstract class ReviewUser with _$ReviewUser {
  const factory ReviewUser({required int id, required String name}) =
      _ReviewUser;

  factory ReviewUser.fromJson(Map<String, dynamic> json) =>
      _$ReviewUserFromJson(json);
}

@freezed
abstract class ProductPage with _$ProductPage {
  const factory ProductPage({
    required List<ProductEntity> data,
    required int length,
    @JsonKey(name: 'total_pages') required int totalPages,
  }) = _ProductPage;

  factory ProductPage.fromJson(Map<String, dynamic> json) =>
      _$ProductPageFromJson(json);
}
