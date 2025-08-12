import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:property_sales/features/home/domain/entites/product_entity.dart';

part 'product_dto.freezed.dart';
part 'product_dto.g.dart';

@freezed
abstract class ProductPageDto with _$ProductPageDto {
  const factory ProductPageDto({
    required List<ProductDto> data,
    required int length,
    @JsonKey(name: 'total_pages') required int totalPages,
  }) = _ProductPageDto;

  factory ProductPageDto.fromJson(Map<String, dynamic> json) =>
      _$ProductPageDtoFromJson(json);
}

@freezed
abstract class ProductDto with _$ProductDto {
  const factory ProductDto({
    required int id,
    required String name,
    required num price,
    @JsonKey(name: 'new_price') required num newPrice,
    @JsonKey(name: 'price_currency') required String priceCurrency,
    @JsonKey(name: 'template_id') required TemplateRefDto template,
    @JsonKey(name: 'quantity_per') required String quantityPer,
    @JsonKey(name: 'is_favorite') required bool isFavorite,
    @JsonKey(name: 'view_count') required int viewCount,
    @JsonKey(name: 'product_main_image') required String imageUrl,
    @JsonKey(name: 'review') required ReviewSummaryDto review,
  }) = _ProductDto;

  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);
}

@freezed
abstract class TemplateRefDto with _$TemplateRefDto {
  const factory TemplateRefDto({required int id, required String name}) =
      _TemplateRefDto;

  factory TemplateRefDto.fromJson(Map<String, dynamic> json) =>
      _$TemplateRefDtoFromJson(json);
}

@freezed
abstract class ReviewSummaryDto with _$ReviewSummaryDto {
  const factory ReviewSummaryDto({
    @Default(0) num review,
    @JsonKey(name: 'review_ids')
    @Default(<ReviewItemDto>[])
    List<ReviewItemDto> reviewIds,
  }) = _ReviewSummaryDto;

  factory ReviewSummaryDto.fromJson(Map<String, dynamic> json) =>
      _$ReviewSummaryDtoFromJson(json);
}

@freezed
abstract class ReviewItemDto with _$ReviewItemDto {
  const factory ReviewItemDto({
    @JsonKey(name: 'review_id') required int reviewId,
    @JsonKey(name: 'review_text') required String reviewText,
    required ReviewUserDto user,
    required String date,
    @JsonKey(name: 'stars_count') required num starsCount,
  }) = _ReviewItemDto;

  factory ReviewItemDto.fromJson(Map<String, dynamic> json) =>
      _$ReviewItemDtoFromJson(json);
}

@freezed
abstract class ReviewUserDto with _$ReviewUserDto {
  const factory ReviewUserDto({required int id, required String name}) =
      _ReviewUserDto;

  factory ReviewUserDto.fromJson(Map<String, dynamic> json) =>
      _$ReviewUserDtoFromJson(json);
}

extension ProductPageDtoX on ProductPageDto {
  ProductPage toDomain() => ProductPage(
    data: data.map((e) => e.toDomain()).toList(),
    length: length,
    totalPages: totalPages,
  );
}

extension ProductDtoX on ProductDto {
  ProductEntity toDomain() => ProductEntity(
    id: id,
    name: name,
    price: price.toDouble(),
    newPrice: newPrice.toDouble(),
    priceCurrency: priceCurrency,
    template: template.toDomain(),
    quantityPer: quantityPer,
    isFavorite: isFavorite,
    viewCount: viewCount,
    imageUrl: imageUrl,
    review: review.toDomain(),
  );
}

extension TemplateRefDtoX on TemplateRefDto {
  TemplateRef toDomain() => TemplateRef(id: id, name: name);
}

extension ReviewSummaryDtoX on ReviewSummaryDto {
  ReviewSummary toDomain() => ReviewSummary(
    review: review.toDouble(),
    reviewIds: reviewIds.map((e) => e.toDomain()).toList(),
  );
}

extension ReviewItemDtoX on ReviewItemDto {
  ReviewItem toDomain() => ReviewItem(
    reviewId: reviewId,
    reviewText: reviewText,
    user: user.toDomain(),
    date: date,
    starsCount: starsCount.toDouble(),
  );
}

extension ReviewUserDtoX on ReviewUserDto {
  ReviewUser toDomain() => ReviewUser(id: id, name: name);
}
