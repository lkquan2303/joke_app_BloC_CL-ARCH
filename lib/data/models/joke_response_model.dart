import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/joke_response.dart';

part 'joke_response_model.g.dart';

@JsonSerializable()
class JokeResponseModel {
  const JokeResponseModel({
    required this.error,
    required this.message,
    required this.joke,
    required this.setup,
  });

  factory JokeResponseModel.fromJson(Map<String, dynamic> json) =>
      _$JokeResponseModelFromJson(json);

  @JsonKey(name: 'error')
  final bool? error;

  @JsonKey(name: 'message')
  final String? message;

  @JsonKey(name: 'joke')
  final String? joke;

  @JsonKey(name: 'setup')
  final String? setup;

  Map<String, dynamic> toJson() => _$JokeResponseModelToJson(this);

  JokeResponse toJokeResponse() =>
      JokeResponse(error: error, message: message, joke: joke ?? setup);
}
