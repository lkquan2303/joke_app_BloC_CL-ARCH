// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'joke_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JokeModel _$JokeModelFromJson(Map<String, dynamic> json) => JokeModel(
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      language: json['language'] as String?,
      blacklistFlags: json['blacklist_flags'] as String?,
      contains: json['contains'] as String?,
    );

Map<String, dynamic> _$JokeModelToJson(JokeModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('categories', instance.categories);
  writeNotNull('language', instance.language);
  writeNotNull('blacklist_flags', instance.blacklistFlags);
  writeNotNull('contains', instance.contains);
  return val;
}
