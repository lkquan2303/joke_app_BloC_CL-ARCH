import 'package:freezed_annotation/freezed_annotation.dart';

part 'joke_response.freezed.dart';

@freezed
class JokeResponse with _$JokeResponse {
  factory JokeResponse({
    required bool? error,
    required String? message,
    required String? joke,
  }) = _JokeResponse;

  const JokeResponse._();
}
