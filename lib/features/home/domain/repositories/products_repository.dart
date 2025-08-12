import 'package:property_sales/core/models/result.dart';
import 'package:property_sales/features/home/domain/entites/product_entity.dart';

abstract class ProductsRepository {
  Future<Result<ProductPage>> search({
    required String searchTerm,
    required int page,
    int limit = 10,
  });
}
