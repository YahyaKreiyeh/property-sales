import 'package:property_sales/core/models/result.dart';
import 'package:property_sales/core/usecases/usecase.dart';
import 'package:property_sales/features/home/domain/entites/product_entity.dart';
import 'package:property_sales/features/home/domain/repositories/products_repository.dart';

class SearchProductsUseCase
    implements UseCase<ProductPage, SearchProductsParams> {
  final ProductsRepository repository;
  const SearchProductsUseCase(this.repository);

  @override
  Future<Result<ProductPage>> call(SearchProductsParams params) {
    return repository.search(
      searchTerm: params.searchTerm,
      page: params.page,
      limit: params.limit,
    );
  }
}

class SearchProductsParams {
  final String searchTerm;
  final int page;
  final int limit;
  const SearchProductsParams({
    required this.searchTerm,
    required this.page,
    this.limit = 10,
  });
}
