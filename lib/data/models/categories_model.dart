import 'package:joke_app/domain/entities/categories.dart';
import 'package:json_annotation/json_annotation.dart';

part 'categories_model.g.dart';

@JsonSerializable()
class CategoriesModel {
  const CategoriesModel({
    this.musicCategories,
    this.blacklistCategories,
    this.searchText,
  });

  factory CategoriesModel.fromJson(Map<String, dynamic> json) =>
      _$CategoriesModelFromJson(json);

  @JsonKey(name: 'music_categories', includeIfNull: false)
  final List<String>? musicCategories;

  @JsonKey(name: 'blacklist_categories', includeIfNull: false)
  final List<String>? blacklistCategories;

  @JsonKey(name: 'search_text', includeIfNull: false)
  final String? searchText;

  Map<String, dynamic> toJson() => _$CategoriesModelToJson(this);

  Categories toCategory() => Categories(
        blacklistCategories: blacklistCategories,
        musicCategories: musicCategories,
        searchText: searchText,
      );
}
