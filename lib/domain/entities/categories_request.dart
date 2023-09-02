import '../../data/models/categories_model.dart';

class CategoriesRequest {
  const CategoriesRequest({
    this.musicCategories,
    this.blacklistCategories,
    this.searchText,
  });

  final List<String>? musicCategories;

  final List<String>? blacklistCategories;

  final String? searchText;

  CategoriesModel toCategoriesModel() => const CategoriesModel();
}
