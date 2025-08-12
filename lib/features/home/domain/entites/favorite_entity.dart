import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_entity.freezed.dart';

@freezed
abstract class FavoriteResult with _$FavoriteResult {
  const factory FavoriteResult({required bool success, String? message}) =
      _FavoriteResult;
}
