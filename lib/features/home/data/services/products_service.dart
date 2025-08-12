import 'package:dio/dio.dart';
import 'package:property_sales/core/networking/api_constants.dart';
import 'package:property_sales/features/home/data/models/category_dto.dart';
import 'package:property_sales/features/home/data/models/product_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'products_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ProductsService {
  factory ProductsService(Dio dio) = _ProductsService;

  @GET(ApiConstants.products)
  Future<ProductPageDto> searchProducts(
    @Queries() Map<String, dynamic> queries,
  );

  @GET(ApiConstants.categories)
  Future<CategoriesResponse> getCategories();
}
