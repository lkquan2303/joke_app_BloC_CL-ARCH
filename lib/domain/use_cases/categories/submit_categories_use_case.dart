import 'package:joke_app/domain/entities/categories_request.dart';

import '../../../../injection/injector.dart';
import '../../entities/base/api_response.dart';
import '../../entities/categories.dart';
import '../../repositories/categories_repository.dart';
import '../use_case.dart';

class SubmitCategoriesUseCase
    implements FutureUseCase<CategoriesRequest, ApiResponse<Categories>> {
  @override
  Future<ApiResponse<Categories>> run(CategoriesRequest categoriesRequest) =>
      injector.get<CategoriesRepository>().submitJoke(categoriesRequest);
}
