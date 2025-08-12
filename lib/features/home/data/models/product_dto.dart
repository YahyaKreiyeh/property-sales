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
    @JsonKey(name: 'product_main_image') required String imageUrl,
    required ReviewSummaryDto review,
  }) = _ProductDto;

  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);
}

@freezed
abstract class ReviewSummaryDto with _$ReviewSummaryDto {
  const factory ReviewSummaryDto({@Default(0) num review}) = _ReviewSummaryDto;

  factory ReviewSummaryDto.fromJson(Map<String, dynamic> json) =>
      _$ReviewSummaryDtoFromJson(json);
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
    imageUrl: imageUrl,
    review: review.toDomain(),
  );
}

extension ReviewSummaryDtoX on ReviewSummaryDto {
  ReviewSummary toDomain() => ReviewSummary(review: review.toDouble());
}
