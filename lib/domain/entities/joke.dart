import 'package:freezed_annotation/freezed_annotation.dart';

part 'joke.freezed.dart';

@freezed
class Joke with _$Joke {
  factory Joke({
    final List<String>? categories,
    final String? language,
    final String? blacklistFlags,
    final String? contains,
  }) = _Joke;

  const Joke._();
}
