import 'package:json_annotation/json_annotation.dart';

part 'categories_response_model.g.dart';

@JsonSerializable()
class CategoriesResponseModel {
  const CategoriesResponseModel({
    required this.musicCategories,
    required this.blacklistCategories,
    required this.searchText,
  });

  factory CategoriesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CategoriesResponseModelFromJson(json);

  @JsonKey(name: 'music_categories')
  final List<String> musicCategories;

  @JsonKey(name: 'blacklist_categories')
  final List<String> blacklistCategories;

  @JsonKey(name: 'search_text')
  final String searchText;

  Map<String, dynamic> toJson() => _$CategoriesResponseModelToJson(this);
}
