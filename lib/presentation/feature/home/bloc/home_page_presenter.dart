import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:joke_app/domain/entities/joke_request.dart';
import 'package:joke_app/domain/use_cases/joke/submit_joke_use_case.dart';

import '../../../../data/mock/data.dart';
import '../../../../data/mock/mock_api_service.dart';
import '../../../../utilities/dialog_helper/dialog_platform_helper.dart';
import 'home_page_state.dart';

typedef CallBackSubmitCategories = Future<ActionDialogPlatform> Function();

class HomepagePresenter extends Cubit<HomepageState> {
  HomepagePresenter(
    this._submitJokeUseCase, {
    HomepageState? state,
  }) : super(state ?? HomepageState.initial());

  final SubmitJokeUseCase _submitJokeUseCase;

  final MockApiService _mockApiService = MockApiService();

  Future<void> submitJoke(JokeRequest jokeRequest, BuildContext context) async {
    emit(state.copyWith(status: HomepagePageStatus.submitCategoriesInProgress));
    try {
      final res = await _submitJokeUseCase.run(jokeRequest);

      WidgetsBinding.instance.addPostFrameCallback((_) {
        DialogPlatformHelper(
          title: res.error as bool ? "Opssss" : "Waoo",
          content: res.error as bool ? res.message ?? "" : res.joke ?? "",
        ).show();
      });

      emit(
        state.copyWith(
          status: HomepagePageStatus.submitCategoriesSuccess,
        ),
      );
    } on Exception catch (error) {
      emit(
        state.copyWith(
          status: HomepagePageStatus.submitCategoriesError,
          error: error.toString(),
        ),
      );
    }
  }

  JokeRequest buildJokeRequestFromState(HomepageState state) {
    List<String>? customCategories;
    if (state.customCategoryChecked!) {
      customCategories = MockData.customCategories
          .where((category) => state.selectedCustomCategories![category]!)
          .toList();
    }

    List<String> blacklistCategories = MockData.blacklistCategories
        .where((category) => state.selectedBlacklistCategories![category]!)
        .toList();

    return JokeRequest(
      language: state.selectedLanguage,
      categories: customCategories,
      blacklistFlags: blacklistCategories,
      contains: state.searchText,
    );
  }

  void updateLanguage(String language) =>
      emit(state.copyWith(selectedLanguage: language));

  void updateCategoryChecked(bool isCategoryCheck) =>
      emit(state.copyWith(customCategoryChecked: isCategoryCheck));

  void updateSearchString(String search) =>
      emit(state.copyWith(searchText: search));

  void selectCustomCategory(bool isSelectCustomCategory, String category) {
    final updatedCategories =
        Map<String, bool>.from(state.selectedCustomCategories!);

    updatedCategories[category] = isSelectCustomCategory;
    emit(state.copyWith(selectedCustomCategories: updatedCategories));
  }

  void selectBlackListCategory(
      bool isSelectBlackListCategory, String category) {
    final updatedBlacklistCategories =
        Map<String, bool>.from(state.selectedBlacklistCategories!);

    updatedBlacklistCategories[category] = isSelectBlackListCategory;
    emit(state.copyWith(
        selectedBlacklistCategories: updatedBlacklistCategories));
  }
}
