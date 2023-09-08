import 'package:joke_app/domain/entities/joke_request.dart';
import 'package:joke_app/domain/entities/joke_response.dart';
import 'package:joke_app/domain/repositories/joke_repository.dart';

import '../../../../injection/injector.dart';
import '../use_case.dart';

class SubmitJokeUseCase implements FutureUseCase<JokeRequest, JokeResponse> {
  @override
  Future<JokeResponse> run(JokeRequest jokeRequest) =>
      injector.get<JokeRepository>().fetchJokeAPI(jokeRequest);

  //  @override
  // Future<ApiResponse<Joke>> run(JokeRequest jokeRequest) =>
  //     injector.get<JokeRepository>().fetchJokeAPI(jokeRequest);
}
