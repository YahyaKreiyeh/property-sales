import 'package:property_sales/core/models/result.dart';
import 'package:property_sales/features/home/domain/entites/product_entity.dart';
import 'package:property_sales/features/home/domain/usecases/search_products_usecase.dart'
    show SearchProductsParams;

abstract class ProductsRepository {
  Future<Result<ProductPage>> search(SearchProductsParams params);
}
