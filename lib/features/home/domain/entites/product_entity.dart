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
    @JsonKey(name: 'product_main_image') required String imageUrl,
    @JsonKey(name: 'review') required ReviewSummary review,
  }) = _ProductEntity;

  factory ProductEntity.fromJson(Map<String, dynamic> json) =>
      _$ProductEntityFromJson(json);
}

@freezed
abstract class ReviewSummary with _$ReviewSummary {
  const factory ReviewSummary({
    @Default(0.0) double review, // average
  }) = _ReviewSummary;

  factory ReviewSummary.fromJson(Map<String, dynamic> json) =>
      _$ReviewSummaryFromJson(json);
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
