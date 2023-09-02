import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/categories.dart';

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
    required Categories categoriesResponse,
    required HomepagePageStatus status,
    String? joke,
    Object? error,
  }) = _HomepageState;

  const HomepageState._();

  factory HomepageState.initial() => HomepageState(
        categoriesResponse: Categories(
          blacklistCategories: [],
          musicCategories: [],
          searchText: '',
        ),
        status: HomepagePageStatus.submitCategoriesBegin,
        error: null,
      );
}
