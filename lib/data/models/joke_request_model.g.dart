// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'joke_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JokeRequestModel _$JokeRequestModelFromJson(Map<String, dynamic> json) =>
    JokeRequestModel(
      categories: (json['categories'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      language: json['language'] as String,
      blacklistFlags: (json['blacklist_flags'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      contains: json['contains'] as String,
    );

Map<String, dynamic> _$JokeRequestModelToJson(JokeRequestModel instance) =>
    <String, dynamic>{
      'categories': instance.categories,
      'language': instance.language,
      'blacklist_flags': instance.blacklistFlags,
      'contains': instance.contains,
    };
