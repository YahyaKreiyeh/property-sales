import 'package:dio/dio.dart';
import 'package:property_sales/features/home/data/models/product_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'products_service.g.dart';

@RestApi(baseUrl: 'https://back.syriasales.com')
abstract class ProductsService {
  factory ProductsService(Dio dio, {String baseUrl}) = _ProductsService;

  @GET('/search/products')
  Future<HttpResponse<ProductPageDto>> searchProducts({
    @Query('website_type') int websiteType = 0,
    @Query('search_term') required String searchTerm,
    @Query('page') required int page,
    @Query('limit') int limit = 10,
  });
}
