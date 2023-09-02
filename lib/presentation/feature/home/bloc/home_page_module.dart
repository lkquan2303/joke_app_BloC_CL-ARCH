import 'package:joke_app/domain/use_cases/categories/submit_categories_use_case.dart';
import 'package:joke_app/presentation/feature/home/bloc/home_page_presenter.dart';

import '../../../../../injection/injector.dart';

class HomepageModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<HomepagePresenter>(
      () => HomepagePresenter(
        injector.get<SubmitCategoriesUseCase>(),
      ),
    );
  }
}
