import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/joke.dart';

part 'joke_model.g.dart';

@JsonSerializable()
class JokeModel {
  const JokeModel({
    this.categories,
    this.language,
    this.blacklistFlags,
    this.contains,
  });

  factory JokeModel.fromJson(Map<String, dynamic> json) =>
      _$JokeModelFromJson(json);

  @JsonKey(name: 'categories', includeIfNull: false)
  final List<String>? categories;

  @JsonKey(name: 'language', includeIfNull: false)
  final String? language;

  @JsonKey(name: 'blacklist_flags', includeIfNull: false)
  final String? blacklistFlags;

  @JsonKey(name: 'contains', includeIfNull: false)
  final String? contains;

  Map<String, dynamic> toJson() => _$JokeModelToJson(this);

  Joke toJoke() => Joke(
        categories: categories,
        language: language,
        blacklistFlags: blacklistFlags,
        contains: contains,
      );
}
