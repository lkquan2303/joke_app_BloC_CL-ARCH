import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories.freezed.dart';

@freezed
class Categories with _$Categories {
  factory Categories({
    required List<String>? musicCategories,
    required List<String>? blacklistCategories,
    required String? searchText,
  }) = _Categories;

  const Categories._();
}
