import 'package:property_sales/core/models/result.dart';
import 'package:property_sales/features/home/domain/entites/favorite_entity.dart';

abstract class FavoriteRepository {
  Future<Result<FavoriteResult>> addToFavorite(int productId);
  Future<Result<FavoriteResult>> removeFromFavorite(int productId);
}
