import 'package:dio/dio.dart';
import 'package:property_sales/core/networking/api_constants.dart';
import 'package:property_sales/features/home/data/models/favorite_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'favorite_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class FavoriteService {
  factory FavoriteService(Dio dio) = _FavoriteService;

  @POST(ApiConstants.favorite)
  Future<FavoriteResponseDto> addToFavorite(@Body() FavoriteRequestDto request);

  @DELETE(ApiConstants.favorite)
  Future<FavoriteResponseDto> removeFromFavorite(
    @Body() FavoriteRequestDto request,
  );
}
