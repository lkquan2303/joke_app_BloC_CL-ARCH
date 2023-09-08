import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:joke_app/presentation/base/base_page.dart';
import 'package:joke_app/presentation/feature/home/bloc/home_page_presenter.dart';
import 'package:joke_app/presentation/feature/home/bloc/home_page_state.dart';

import '../../../data/mock/data.dart';
import '../../../domain/entities/joke_request.dart';
import '../../../injection/injector.dart';
import '../../app_routes.dart';
import '../../base/progress_hud_mixin.dart';

class HomePage extends BasePage {
  const HomePage({super.key});

  static ScreenRoute get route => ScreenRoute(
        name: '/home',
        builder: (_) => const HomePage(),
      );

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends BasePageState<HomePage> with ProgressHudMixin {
  final _homepagePresenter = injector.get<HomepagePresenter>();

  @override
  Widget buildBody(BuildContext context) =>
      BlocConsumer<HomepagePresenter, HomepageState>(
        bloc: _homepagePresenter,
        listenWhen: (previous, current) => previous.status != current.status,
        listener: (context, state) {
          if (state.status == HomepagePageStatus.submitCategoriesInProgress) {
            showProgressHud();
          } else {
            dismissProgressHud();
            if (state.status == HomepagePageStatus.submitCategoriesError) {
              onError(state.error);
            }
          }
        },
        builder: (context, state) {
          return buildBodyContent(
            builder: () {
              return GestureDetector(
                onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
                child: Scaffold(
                  appBar: AppBar(title: const Text('Joke Selector')),
                  body: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Render Language Picker
                          const Text(
                            'Select a language',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          DropdownButton<String>(
                            hint: const Text("Select a language"),
                            value: state.selectedLanguage,
                            onChanged: (String? newValue) => _homepagePresenter
                                .updateLanguage(newValue ?? ""),
                            items: MockData.languages
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(value),
                                ),
                              );
                            }).toList(),
                          ),
                          const SizedBox(height: 20),

                          //Render Category Picker
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            title: const Text(
                              "Custom Category",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            trailing: Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: Checkbox(
                                value: state.customCategoryChecked,
                                onChanged: (bool? value) => _homepagePresenter
                                    .updateCategoryChecked(value ?? false),
                              ),
                            ),
                          ),

                          if (state.customCategoryChecked ?? false)
                            ...MockData.customCategories.map((category) {
                              return CheckboxListTile(
                                title: Text(category),
                                value:
                                    state.selectedCustomCategories![category],
                                onChanged: (bool? value) =>
                                    _homepagePresenter.selectCustomCategory(
                                        value ?? false, category),
                              );
                            }).toList(),
                          const SizedBox(height: 20),

                          //Render Blacklist Picker
                          const Text(
                            'Blacklist (Optional)',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          ...MockData.blacklistCategories.map((category) {
                            return CheckboxListTile(
                              title: Text(category),
                              value:
                                  state.selectedBlacklistCategories![category],
                              onChanged: (bool? value) =>
                                  _homepagePresenter.selectBlackListCategory(
                                      value ?? false, category),
                            );
                          }).toList(),
                          const SizedBox(height: 20),

                          //Render Search Picker
                          TextField(
                            onChanged: (value) =>
                                _homepagePresenter.updateSearchString(value),
                            decoration: const InputDecoration(
                              labelText: 'Search',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Center(
                            child: ElevatedButton(
                              onPressed: () {
                                FocusManager.instance.primaryFocus?.unfocus();
                                JokeRequest jokeRequest = _homepagePresenter
                                    .buildJokeRequestFromState(state);
                                _homepagePresenter.submitJoke(
                                    jokeRequest, context);
                              },
                              child: const Text('Submit'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      );
}
