import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:joke_app/domain/entities/categories_request.dart';
import 'package:joke_app/presentation/base/base_page.dart';
import 'package:joke_app/presentation/feature/home/bloc/home_page_presenter.dart';
import 'package:joke_app/presentation/feature/home/bloc/home_page_state.dart';

import '../../../injection/injector.dart';
import '../../../utilities/dialog_helper/dialog_platform_helper.dart';
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

  List<String> musicCategories = [
    'Pop',
    'Rock',
    'Jazz',
    'Classical',
    'Hip-Hop',
  ];

  List<String> blacklistCategories = [
    'Explicit',
    'Live',
    'Covers',
  ];

  Map<String, bool> selectedMusicCategories = {};
  Map<String, bool> selectedBlacklistCategories = {};

  String searchText = '';

  @override
  void initState() {
    super.initState();

    for (var category in musicCategories) {
      selectedMusicCategories[category] = false;
    }

    for (var category in blacklistCategories) {
      selectedBlacklistCategories[category] = false;
    }
  }

  bool get isSubmitEnabled {
    bool hasMusicCategorySelected =
        selectedMusicCategories.values.any((value) => value);
    bool hasBlacklistCategorySelected =
        selectedBlacklistCategories.values.any((value) => value);
    return hasMusicCategorySelected ||
        hasBlacklistCategorySelected ||
        searchText.isNotEmpty;
  }

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
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (state.joke != null) {
              DialogPlatformHelper(
                title: 'Jokee',
                content: state.joke!,
              ).show();
            }
          });

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
                        children: [
                          const Text('Music Categories'),
                          ...musicCategories.map((category) {
                            return CheckboxListTile(
                              title: Text(category),
                              value: selectedMusicCategories[category],
                              onChanged: (bool? value) {
                                setState(() {
                                  selectedMusicCategories[category] = value!;
                                });
                              },
                            );
                          }).toList(),
                          const SizedBox(height: 20),
                          const Text('Blacklist Categories'),
                          ...blacklistCategories.map((category) {
                            return CheckboxListTile(
                              title: Text(category),
                              value: selectedBlacklistCategories[category],
                              onChanged: (bool? value) {
                                setState(() {
                                  selectedBlacklistCategories[category] =
                                      value!;
                                });
                              },
                            );
                          }).toList(),
                          const SizedBox(height: 20),
                          TextField(
                            onChanged: (value) {
                              setState(() {
                                searchText = value;
                              });
                            },
                            decoration: const InputDecoration(
                              labelText: 'Search',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Opacity(
                            opacity: isSubmitEnabled ? 1.0 : 0.5,
                            child: ElevatedButton(
                              onPressed: isSubmitEnabled
                                  ? () {
                                      _homepagePresenter.submitCategories(
                                        CategoriesRequest(
                                          musicCategories: musicCategories,
                                          blacklistCategories:
                                              blacklistCategories,
                                          searchText: searchText,
                                        ),
                                      );
                                    }
                                  : null,
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
