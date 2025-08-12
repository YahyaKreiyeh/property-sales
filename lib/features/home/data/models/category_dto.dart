import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:property_sales/features/home/domain/entites/category_entity.dart';

part 'category_dto.freezed.dart';
part 'category_dto.g.dart';

@freezed
abstract class CategoryDto with _$CategoryDto {
  const factory CategoryDto({
    required int id,
    required String name,
    @JsonKey(name: 'small_image_url') String? smallImageUrl,
  }) = _CategoryDto;

  factory CategoryDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryDtoFromJson(json);
}

@freezed
abstract class CategoriesResponse with _$CategoriesResponse {
  const factory CategoriesResponse({
    @Default([]) List<CategoryDto> data,
    String? message,
    int? all,
    int? totalpages,
  }) = _CategoriesResponse;

  factory CategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoriesResponseFromJson(json);
}

extension CategoriesResponseX on CategoriesResponse {
  CategoryPage toDomain() => CategoryPage(
    data: data
        .map(
          (dto) => CategoryEntity(
            id: dto.id,
            name: dto.name,
            smallImageUrl: dto.smallImageUrl,
          ),
        )
        .toList(),
    length: data.length,
    totalPages: totalpages ?? 0,
    message: message,
  );
}
