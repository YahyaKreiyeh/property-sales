import 'package:property_sales/core/models/result.dart';
import 'package:property_sales/core/usecases/usecase.dart';
import 'package:property_sales/features/home/domain/entites/category_entity.dart';
import 'package:property_sales/features/home/domain/repositories/products_repository.dart';

class GetCategoriesUseCase implements UseCase<List<CategoryEntity>, void> {
  final ProductsRepository repository;
  const GetCategoriesUseCase(this.repository);

  @override
  Future<Result<List<CategoryEntity>>> call([void _]) {
    return repository.getCategories();
  }
}
