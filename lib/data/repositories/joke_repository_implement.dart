import 'package:joke_app/domain/entities/joke_request.dart';
import 'package:joke_app/domain/entities/joke_response.dart';
import 'package:joke_app/domain/repositories/joke_repository.dart'; // Giả định đường dẫn này tồn tại

import '../services/network_services/api_client/api_client.dart';

class JokeRepositoryImplement implements JokeRepository {
  JokeRepositoryImplement(this._apiClient);

  final ApiClient _apiClient;

  @override
  Future<JokeResponse> fetchJokeAPI(JokeRequest jokeRequest) async {
    final jokeResponseModel = await _apiClient.fetchJokeAPI(
      jokeRequest.categories?.join(",") ?? "Any",
      jokeRequest.language?.split(' -')[0] ?? "en",
      jokeRequest.blacklistFlags?.join(",") ?? "",
      jokeRequest.contains,
    );

    return jokeResponseModel.toJokeResponse();
  }
}
