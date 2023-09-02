// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoriesModel _$CategoriesModelFromJson(Map<String, dynamic> json) =>
    CategoriesModel(
      musicCategories: (json['music_categories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      blacklistCategories: (json['blacklist_categories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      searchText: json['search_text'] as String?,
    );

Map<String, dynamic> _$CategoriesModelToJson(CategoriesModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('music_categories', instance.musicCategories);
  writeNotNull('blacklist_categories', instance.blacklistCategories);
  writeNotNull('search_text', instance.searchText);
  return val;
}
