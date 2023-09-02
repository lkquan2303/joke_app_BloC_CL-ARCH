// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoriesResponseModel _$CategoriesResponseModelFromJson(
        Map<String, dynamic> json) =>
    CategoriesResponseModel(
      musicCategories: (json['music_categories'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      blacklistCategories: (json['blacklist_categories'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      searchText: json['search_text'] as String,
    );

Map<String, dynamic> _$CategoriesResponseModelToJson(
        CategoriesResponseModel instance) =>
    <String, dynamic>{
      'music_categories': instance.musicCategories,
      'blacklist_categories': instance.blacklistCategories,
      'search_text': instance.searchText,
    };
