// lib/features/home/data/data_sources/products_remote_data_source.dart
import 'package:dio/dio.dart';
import 'package:property_sales/features/home/data/models/product_dto.dart';
import 'package:property_sales/features/home/data/services/products_service.dart';
import 'package:retrofit/retrofit.dart';

abstract class ProductsRemoteDataSource {
  Future<ProductPageDto> search({
    required String searchTerm,
    required int page,
    int limit = 10,
  });
}

class ProductsRemoteDataSourceImpl implements ProductsRemoteDataSource {
  final ProductsService _service;
  ProductsRemoteDataSourceImpl(this._service);

  @override
  Future<ProductPageDto> search({
    required String searchTerm,
    required int page,
    int limit = 10,
  }) async {
    final HttpResponse<ProductPageDto> res = await _service.searchProducts(
      searchTerm: searchTerm,
      page: page,
      limit: limit,
    );

    final code = res.response.statusCode ?? 500;
    if (code >= 200 && code < 300) {
      return res.data; // <-- already a ProductPageDto
    }

    throw DioException(
      requestOptions: res.response.requestOptions,
      response: res.response,
      error: 'Unsuccessful status code: $code',
      type: DioExceptionType.badResponse,
    );
  }
}
