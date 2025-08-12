import 'package:property_sales/core/models/result.dart';
import 'package:property_sales/core/networking/api_error_handler.dart';
import 'package:property_sales/features/home/data/data_sources/favorite_remote_data_source.dart';
import 'package:property_sales/features/home/domain/entites/favorite_entity.dart';
import 'package:property_sales/features/home/domain/repositories/favorite_repository.dart';

class FavoriteRepositoryImpl implements FavoriteRepository {
  final FavoriteRemoteDataSource _remote;

  FavoriteRepositoryImpl(this._remote);

  @override
  Future<Result<FavoriteResult>> addToFavorite(int productId) async {
    try {
      final response = await _remote.addToFavorite(productId);

      final result = FavoriteResult(
        success: response.success ?? true,
        message: response.message,
      );

      return Result.success(data: result);
    } catch (error) {
      final apiError = ApiErrorHandler.handle(error);
      return Result.failure(
        error: Exception('Failed to add to favorites'),
        errorMessage: apiError.getAllErrorMessages(),
      );
    }
  }

  @override
  Future<Result<FavoriteResult>> removeFromFavorite(int productId) async {
    try {
      final response = await _remote.removeFromFavorite(productId);

      final result = FavoriteResult(
        success: response.success ?? true,
        message: response.message,
      );

      return Result.success(data: result);
    } catch (error) {
      final apiError = ApiErrorHandler.handle(error);
      return Result.failure(
        error: Exception('Failed to remove from favorites'),
        errorMessage: apiError.getAllErrorMessages(),
      );
    }
  }
}
