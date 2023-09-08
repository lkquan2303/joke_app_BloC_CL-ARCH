// joke_request_model.dart

import 'package:json_annotation/json_annotation.dart';

part 'joke_request_model.g.dart';

@JsonSerializable()
class JokeRequestModel {
  const JokeRequestModel({
    required this.categories,
    required this.language,
    required this.blacklistFlags,
    required this.contains,
  });

  factory JokeRequestModel.fromJson(Map<String, dynamic> json) =>
      _$JokeRequestModelFromJson(json);

  @JsonKey(name: 'categories')
  final List<String> categories;

  @JsonKey(name: 'language')
  final String language;

  @JsonKey(name: 'blacklist_flags')
  final List<String> blacklistFlags;

  @JsonKey(name: 'contains')
  final String contains;

  Map<String, dynamic> toJson() => _$JokeRequestModelToJson(this);
}
