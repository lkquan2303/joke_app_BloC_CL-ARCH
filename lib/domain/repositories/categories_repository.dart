import 'package:joke_app/domain/entities/categories.dart';
import 'package:joke_app/domain/entities/categories_request.dart';

import '../entities/base/api_response.dart';

abstract class CategoriesRepository {
  Future<ApiResponse<Categories>> submitJoke(
    CategoriesRequest categoriesRequest,
  );
}
