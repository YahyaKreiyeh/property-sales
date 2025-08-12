import 'package:property_sales/core/models/result.dart';
import 'package:property_sales/core/networking/api_error_handler.dart';
import 'package:property_sales/features/home/data/data_sources/products_remote_data_source.dart';
import 'package:property_sales/features/home/data/models/product_dto.dart';
import 'package:property_sales/features/home/domain/entites/category_entity.dart';
import 'package:property_sales/features/home/domain/entites/product_entity.dart';
import 'package:property_sales/features/home/domain/repositories/products_repository.dart';
import 'package:property_sales/features/home/domain/usecases/search_products_usecase.dart'
    show SearchProductsParams;

class ProductsRepositoryImpl implements ProductsRepository {
  final ProductsRemoteDataSource _remote;
  ProductsRepositoryImpl(this._remote);

  @override
  Future<Result<ProductPage>> search(SearchProductsParams params) async {
    try {
      final dto = await _remote.search(params);
      final productPage = dto.toDomain();

      if (productPage.data.isEmpty) {
        return Result.success(
          data: ProductPage(
            data: const [],
            length: 0,
            totalPages: 0,
            message: productPage.message ?? 'No products found',
          ),
        );
      }

      return Result.success(data: productPage);
    } catch (error) {
      final apiError = ApiErrorHandler.handle(error);
      return Result.failure(
        error: Exception('Search failed'),
        errorMessage: apiError.getAllErrorMessages(),
      );
    }
  }

  @override
  Future<Result<List<CategoryEntity>>> getCategories() async {
    try {
      final categories = await _remote.getCategories();
      return Result.success(data: categories);
    } catch (error) {
      final apiError = ApiErrorHandler.handle(error);
      return Result.failure(
        error: Exception('Failed to load categories'),
        errorMessage: apiError.getAllErrorMessages(),
      );
    }
  }
}
