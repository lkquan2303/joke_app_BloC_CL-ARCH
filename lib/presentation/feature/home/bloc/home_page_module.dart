import 'package:joke_app/domain/use_cases/joke/submit_joke_use_case.dart'; // Import the SubmitJokeUseCase
import 'package:joke_app/presentation/feature/home/bloc/home_page_presenter.dart';

import '../../../../../injection/injector.dart';

class HomepageModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<HomepagePresenter>(
      () => HomepagePresenter(
        injector.get<SubmitJokeUseCase>()
      ),
    );
  }
}
