import 'package:property_sales/core/models/result.dart';
import 'package:property_sales/features/home/data/data_sources/products_remote_data_source.dart';
import 'package:property_sales/features/home/data/models/product_dto.dart';
import 'package:property_sales/features/home/domain/entites/product_entity.dart';
import 'package:property_sales/features/home/domain/repositories/products_repository.dart';

class ProductsRepositoryImpl implements ProductsRepository {
  final ProductsRemoteDataSource _remote;
  ProductsRepositoryImpl(this._remote);

  @override
  Future<Result<ProductPage>> search({
    required String searchTerm,
    required int page,
    int limit = 10,
  }) async {
    try {
      final dto = await _remote.search(
        searchTerm: searchTerm,
        page: page,
        limit: limit,
      );
      return Result.success(data: dto.toDomain());
    } catch (e) {
      return Result.failure(
        error: Exception('Search failed: $e'),
        errorMessage: 'Couldn\'t load products',
      );
    }
  }
}
