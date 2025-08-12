import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:property_sales/features/home/data/models/category_dto.dart';
import 'package:property_sales/features/home/data/models/product_dto.dart';
import 'package:property_sales/features/home/data/services/products_service.dart';
import 'package:property_sales/features/home/domain/entites/category_entity.dart';
import 'package:property_sales/features/home/domain/usecases/search_products_usecase.dart'
    show SearchProductsParams;

abstract class ProductsRemoteDataSource {
  Future<ProductPageDto> search(SearchProductsParams params);
  Future<List<CategoryEntity>> getCategories();
}

class ProductsRemoteDataSourceImpl implements ProductsRemoteDataSource {
  final ProductsService _service;
  ProductsRemoteDataSourceImpl(this._service);

  @override
  Future<ProductPageDto> search(SearchProductsParams params) async {
    try {
      final Map<String, dynamic> queries = {
        'website_type': 0,
        'search_term': params.searchTerm,
        'page': params.page,
        'limit': params.limit,
      };

      if (params.minPrice != null) {
        queries['min_price'] = params.minPrice;
      }
      if (params.maxPrice != null) {
        queries['max_price'] = params.maxPrice;
      }
      if (params.cityId != null) {
        queries['city_id'] = params.cityId;
      }

      if (params.categoryIds.isNotEmpty) {
        queries['category_ids'] = jsonEncode(params.categoryIds);
      }

      final dto = await _service.searchProducts(queries);

      return dto.copyWith(
        length: dto.length ?? dto.data.length,
        totalPages: dto.totalPages ?? 0,
        message: dto.message ?? (dto.data.isEmpty ? 'No products found' : ''),
      );
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<List<CategoryEntity>> getCategories() async {
    try {
      final response = await _service.getCategories();
      return response.data.map((dto) => _categoryDtoToEntity(dto)).toList();
    } on DioException {
      rethrow;
    }
  }

  CategoryEntity _categoryDtoToEntity(CategoryDto dto) {
    return CategoryEntity(
      id: dto.id,
      name: dto.name,
      smallImageUrl: dto.smallImageUrl,
    );
  }
}
