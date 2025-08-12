import 'package:property_sales/core/models/result.dart';
import 'package:property_sales/core/usecases/usecase.dart';
import 'package:property_sales/features/home/domain/entites/product_entity.dart';
import 'package:property_sales/features/home/domain/repositories/products_repository.dart';

class SearchProductsUseCase
    implements UseCase<ProductPage, SearchProductsParams> {
  final ProductsRepository repository;
  const SearchProductsUseCase(this.repository);

  @override
  Future<Result<ProductPage>> call(SearchProductsParams params) async {
    final cleanSearchTerm = params.searchTerm.trim();

    return repository.search(
      SearchProductsParams(
        searchTerm: cleanSearchTerm,
        page: params.page,
        limit: params.limit,
        minPrice: params.minPrice,
        maxPrice: params.maxPrice,
        categoryIds: params.categoryIds,
        cityId: params.cityId,
      ),
    );
  }
}

class SearchProductsParams {
  final String searchTerm;
  final int page;
  final int limit;
  final double? minPrice;
  final double? maxPrice;
  final List<int> categoryIds;
  final int? cityId;
  
  const SearchProductsParams({
    required this.searchTerm,
    required this.page,
    this.limit = 10,
    this.minPrice,
    this.maxPrice,
    this.categoryIds = const [],
    this.cityId,
  });
}
