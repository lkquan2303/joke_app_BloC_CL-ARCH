import 'package:joke_app/data/models/joke_request_model.dart';

class JokeRequest {
  const JokeRequest({
    this.categories,
    this.language,
    this.blacklistFlags,
    this.contains,
  });

  final List<String>? categories;
  final String? language;
  final List<String>? blacklistFlags;
  final String? contains;

  JokeRequestModel toJokeRequestModel() {
    return JokeRequestModel(
      categories: categories ?? [],
      language: language ?? "",
      blacklistFlags: blacklistFlags ?? [],
      contains: contains ?? "",
    );
  }
}
