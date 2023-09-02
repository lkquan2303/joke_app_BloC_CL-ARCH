import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:joke_app/domain/entities/categories.dart';
import 'package:joke_app/presentation/feature/home/bloc/home_page_presenter.dart';
import 'package:joke_app/presentation/feature/home/bloc/home_page_state.dart';
import 'package:joke_app/presentation/feature/home/home_page.dart';
import 'package:joke_app/utilities/dialog_helper/loading_full_screen_helper.dart';
import 'package:joke_app/utilities/error_helper/error_helper.dart';
import 'package:joke_app/utilities/logger_helper/logger_helper.dart';
import 'package:mockito/mockito.dart';

class MockHomepagePresenter extends Mock implements HomepagePresenter {
  @override
  late HomepageState state;
  @override
  Stream<HomepageState> get stream => Stream.value(state);
}

class MockLoadingFullScreenHelper extends Mock
    implements LoadingFullScreenHelper {}

class MockLoggerHelper extends Mock implements LoggerHelper {}

class MockErrorHelper extends Mock implements ErrorHelper {}

void main() {
  MockHomepagePresenter? mockHomepagePresenter;

  setUp(() {
    mockHomepagePresenter = MockHomepagePresenter();
    GetIt.I.registerSingleton<HomepagePresenter>(mockHomepagePresenter!);
    GetIt.I.registerSingleton<LoadingFullScreenHelper>(
        MockLoadingFullScreenHelper());
    GetIt.I.registerSingleton<LoggerHelper>(MockLoggerHelper());
    GetIt.I.registerSingleton<ErrorHelper>(MockErrorHelper());
  });

  tearDown(() {
    GetIt.I.unregister<LoadingFullScreenHelper>();
    GetIt.I.unregister<LoggerHelper>();
    GetIt.I.unregister<ErrorHelper>();
    GetIt.I.unregister<HomepagePresenter>();
  });

  group('HomePage', () {
    testWidgets(
        'shows CircularProgressIndicator when state is submitCategoriesInProgress',
        (WidgetTester tester) async {
      mockHomepagePresenter!.state = HomepageState(
        status: HomepagePageStatus.submitCategoriesInProgress,
        categoriesResponse: Categories(
          blacklistCategories: [],
          musicCategories: [],
          searchText: '',
        ),
      );

      await tester.pumpWidget(MaterialApp(
        home: BlocProvider.value(
          value: mockHomepagePresenter!,
          child: const HomePage(),
        ),
      ));

      await tester.pumpAndSettle();

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });
  });
}
