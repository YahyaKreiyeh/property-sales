import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_entity.freezed.dart';
part 'category_entity.g.dart';

@freezed
abstract class CategoryEntity with _$CategoryEntity {
  const factory CategoryEntity({
    required int id,
    required String name,
    String? smallImageUrl,
  }) = _CategoryEntity;

  factory CategoryEntity.fromJson(Map<String, dynamic> json) =>
      _$CategoryEntityFromJson(json);
}

@freezed
abstract class CategoryPage with _$CategoryPage {
  const factory CategoryPage({
    required List<CategoryEntity> data,
    @Default(0) int length,
    @JsonKey(name: 'total_pages') @Default(0) int totalPages,
    @JsonKey(name: 'message') String? message,
  }) = _CategoryPage;

  factory CategoryPage.fromJson(Map<String, dynamic> json) =>
      _$CategoryPageFromJson(json);
}
