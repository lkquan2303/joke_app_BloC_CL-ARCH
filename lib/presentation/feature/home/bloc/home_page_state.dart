import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/mock/data.dart';

part 'home_page_state.freezed.dart';

enum HomepagePageStatus {
  submitCategoriesBegin,
  submitCategoriesInProgress,
  submitCategoriesSuccess,
  submitCategoriesError,
}

@freezed
class HomepageState with _$HomepageState {
  factory HomepageState({
    required HomepagePageStatus status,
    String? joke,
    String? error,
    Map<String, bool>? selectedCustomCategories,
    Map<String, bool>? selectedBlacklistCategories,
    String? selectedLanguage,
    bool? customCategoryChecked,
    String? searchText,
  }) = _HomepageState;

  const HomepageState._();

  factory HomepageState.initial() {
    final Map<String, bool> initialCustomCategories = {
      for (var category in MockData.customCategories) category: false,
    };

    final Map<String, bool> initialBlacklistCategories = {
      for (var category in MockData.blacklistCategories) category: false,
    };

    return HomepageState(
      status: HomepagePageStatus.submitCategoriesBegin,
      error: null,
      customCategoryChecked: MockData.customCategoryChecked,
      searchText: '',
      selectedLanguage: MockData.languages.first,
      selectedCustomCategories: initialCustomCategories,
      selectedBlacklistCategories: initialBlacklistCategories,
    );
  }
}
