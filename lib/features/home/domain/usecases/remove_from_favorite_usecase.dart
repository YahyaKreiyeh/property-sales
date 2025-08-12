import 'package:property_sales/core/models/result.dart';
import 'package:property_sales/core/usecases/usecase.dart';
import 'package:property_sales/features/home/domain/entites/favorite_entity.dart';
import 'package:property_sales/features/home/domain/repositories/favorite_repository.dart';

class RemoveFromFavoriteUseCase implements UseCase<FavoriteResult, int> {
  final FavoriteRepository repository;
  const RemoveFromFavoriteUseCase(this.repository);

  @override
  Future<Result<FavoriteResult>> call(int productId) {
    return repository.removeFromFavorite(productId);
  }
}
