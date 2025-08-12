import 'package:dio/dio.dart';
import 'package:property_sales/features/home/data/models/product_dto.dart';
import 'package:property_sales/features/home/data/services/products_service.dart';
import 'package:property_sales/features/home/domain/usecases/search_products_usecase.dart'
    show SearchProductsParams;

abstract class ProductsRemoteDataSource {
  Future<ProductPageDto> search(SearchProductsParams params);
}

class ProductsRemoteDataSourceImpl implements ProductsRemoteDataSource {
  final ProductsService _service;
  ProductsRemoteDataSourceImpl(this._service);

  @override
  Future<ProductPageDto> search(SearchProductsParams params) async {
    try {
      final dto = await _service.searchProducts(
        websiteType: 0,
        searchTerm: params.searchTerm,
        page: params.page,
        limit: params.limit,
      );

      return dto.copyWith(
        length: dto.length ?? dto.data.length,
        totalPages: dto.totalPages ?? 0,
        message: dto.message ?? (dto.data.isEmpty ? 'No products found' : ''),
      );
    } on DioException {
      rethrow;
    }
  }
}
