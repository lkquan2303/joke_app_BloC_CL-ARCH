import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

import '../../../../utilities/constants/api_constants.dart';
import '../../../models/base/api_response_model.dart';
import '../../../models/categories_model.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @POST(ApiConstants.submitJoke)
  Future<ApiResponseModel<CategoriesModel>> submitJoke(
    @Body() CategoriesModel body,
  );
}
