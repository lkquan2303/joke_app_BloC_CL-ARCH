import 'package:joke_app/domain/entities/categories.dart';
import 'package:joke_app/domain/entities/categories_request.dart';
import 'package:joke_app/domain/repositories/categories_repository.dart';

import '../../domain/entities/base/api_response.dart';

import '../services/network_services/api_client/api_client.dart';

class CategoryRepositoryImplement implements CategoriesRepository {
  CategoryRepositoryImplement(this._apiClient);

  final ApiClient _apiClient;

  @override
  Future<ApiResponse<Categories>> submitJoke(CategoriesRequest categoriesRequest) async {
      final categoryResponseModel =
        await _apiClient.submitJoke(categoriesRequest.toCategoriesModel());
    return categoryResponseModel.toCategoryListDataResponse();
  }

  // @override
  // Future<ApiResponse<ToDo>> addToDo(
  //   ToDoRequest toDoRequest,
  // ) async {
  //   final toDoListResponseModel =
  //       await _apiClient.addToDo(toDoRequest.toToDoRequestModel());
  //   return toDoListResponseModel.toToDoListDataResponse();
  // }
}
