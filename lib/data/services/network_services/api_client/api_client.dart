import 'package:dio/dio.dart' hide Headers;
import 'package:joke_app/data/models/joke_response_model.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../utilities/constants/api_constants.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET('${ApiConstants.getJoke}{categories}')
  Future<JokeResponseModel> fetchJokeAPI(
    @Path('categories') String categories,
    @Query("lang") String lang,
    @Query("blacklistFlags") String blacklistFlags,
    @Query("contains") String? contains,
  );
}
