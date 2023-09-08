// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'joke_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JokeResponseModel _$JokeResponseModelFromJson(Map<String, dynamic> json) =>
    JokeResponseModel(
      error: json['error'] as bool?,
      message: json['message'] as String?,
      joke: json['joke'] as String?,
      setup: json['setup'] as String?,
    );

Map<String, dynamic> _$JokeResponseModelToJson(JokeResponseModel instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'joke': instance.joke,
      'setup': instance.setup,
    };
