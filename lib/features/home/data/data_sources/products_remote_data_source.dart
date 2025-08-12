import 'package:dio/dio.dart';
import 'package:property_sales/features/home/data/models/product_dto.dart';
import 'package:property_sales/features/home/data/services/products_service.dart';
import 'package:property_sales/features/home/domain/usecases/search_products_usecase.dart'
    show SearchProductsParams;
import 'package:retrofit/retrofit.dart';

abstract class ProductsRemoteDataSource {
  Future<ProductPageDto> search(SearchProductsParams params);
}

class ProductsRemoteDataSourceImpl implements ProductsRemoteDataSource {
  final ProductsService _service;
  ProductsRemoteDataSourceImpl(this._service);

  @override
  Future<ProductPageDto> search(SearchProductsParams params) async {
    final HttpResponse<ProductPageDto> res = await _service.searchProducts(
      websiteType: 0,
      searchTerm: params.searchTerm,
      page: params.page,
      limit: params.limit,
    );

    final code = res.response.statusCode ?? 500;
    if (code >= 200 && code < 300) {
      return res.data;
    }

    throw DioException(
      requestOptions: res.response.requestOptions,
      response: res.response,
      error: 'Unsuccessful status code: $code',
      type: DioExceptionType.badResponse,
    );
  }
}
