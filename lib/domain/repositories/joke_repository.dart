import 'package:joke_app/domain/entities/joke_request.dart';
import 'package:joke_app/domain/entities/joke_response.dart';

abstract class JokeRepository {
  Future<JokeResponse> fetchJokeAPI(JokeRequest jokeRequest);
}
