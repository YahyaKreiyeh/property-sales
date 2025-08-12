import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_dto.freezed.dart';
part 'favorite_dto.g.dart';

@freezed
abstract class FavoriteRequestDto with _$FavoriteRequestDto {
  const factory FavoriteRequestDto({
    @JsonKey(name: 'product_id') required List<int> productId,
  }) = _FavoriteRequestDto;

  factory FavoriteRequestDto.fromJson(Map<String, dynamic> json) =>
      _$FavoriteRequestDtoFromJson(json);
}

@freezed
abstract class FavoriteResponseDto with _$FavoriteResponseDto {
  const factory FavoriteResponseDto({String? message, bool? success}) =
      _FavoriteResponseDto;

  factory FavoriteResponseDto.fromJson(Map<String, dynamic> json) =>
      _$FavoriteResponseDtoFromJson(json);
}
