import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:joke_app/domain/entities/categories_request.dart';

import '../../../../data/mock/mock_api_service.dart';
import '../../../../utilities/dialog_helper/dialog_platform_helper.dart';
import '../../../../../domain/use_cases/categories/submit_categories_use_case.dart';
import 'home_page_state.dart';

typedef CallBackSubmitCategories = Future<ActionDialogPlatform> Function();

class HomepagePresenter extends Cubit<HomepageState> {
  HomepagePresenter(
    this._submitCategoriesUseCase, {
    @visibleForTesting HomepageState? state,
  }) : super(state ?? HomepageState.initial());

  final SubmitCategoriesUseCase _submitCategoriesUseCase;
  final MockApiService _mockApiService = MockApiService();

  Future<void> submitCategories(CategoriesRequest categoriesRequest) async {
    emit(state.copyWith(status: HomepagePageStatus.submitCategoriesInProgress));
    try {
      //  await _submitCategoriesUseCase.run(categoriesRequest);
      final response = await _mockApiService.fetchJoke();
      final joke = response['joke'] as String? ?? '';

      emit(
        state.copyWith(
          status: HomepagePageStatus.submitCategoriesSuccess,
          joke: joke,
        ),
      );
    } on Exception catch (error) {
      emit(
        state.copyWith(
          status: HomepagePageStatus.submitCategoriesError,
          error: error,
        ),
      );
    }
  }
}
