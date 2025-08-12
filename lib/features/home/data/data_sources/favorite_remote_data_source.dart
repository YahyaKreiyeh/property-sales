import 'package:dio/dio.dart';
import 'package:property_sales/features/home/data/models/favorite_dto.dart';
import 'package:property_sales/features/home/data/services/favorite_service.dart';

abstract class FavoriteRemoteDataSource {
  Future<FavoriteResponseDto> addToFavorite(int productId);
  Future<FavoriteResponseDto> removeFromFavorite(int productId);
}

class FavoriteRemoteDataSourceImpl implements FavoriteRemoteDataSource {
  final FavoriteService _service;

  FavoriteRemoteDataSourceImpl(this._service);

  @override
  Future<FavoriteResponseDto> addToFavorite(int productId) async {
    try {
      final request = FavoriteRequestDto(productId: [productId]);

      return await _service.addToFavorite(request);
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<FavoriteResponseDto> removeFromFavorite(int productId) async {
    try {
      final request = FavoriteRequestDto(productId: [productId]);

      return await _service.removeFromFavorite(request);
    } on DioException {
      rethrow;
    }
  }
}
