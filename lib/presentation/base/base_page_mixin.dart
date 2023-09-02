import 'package:flutter/material.dart';
import 'package:joke_app/presentation/resources/app_colors.dart';

mixin BasePageMixin {
  Widget buildBody(BuildContext context);

  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return null;
  }

  Widget? buildBottomNavigationBar(BuildContext context) {
    return null;
  }

  Widget? buildBottomSheet(BuildContext context) {
    return null;
  }

  Widget? buildDrawer(BuildContext context) {
    return null;
  }

  Widget? buildEndDrawer(BuildContext context) {
    return null;
  }

  Widget? buildFloatActionButton(BuildContext context) {
    return null;
  }

  Widget buildPage(BuildContext context) => Scaffold(
        backgroundColor: context.colors.background,
        resizeToAvoidBottomInset: resizeToAvoidBottomInset,
        appBar: buildAppBar(context),
        body: SafeArea(
          child: buildBody(context),
        ),
        bottomNavigationBar: buildBottomNavigationBar(context),
        bottomSheet: buildBottomSheet(context),
        drawer: buildDrawer(context),
        endDrawer: buildEndDrawer(context),
        floatingActionButton: buildFloatActionButton(context),
      );

  bool get resizeToAvoidBottomInset => false;
}
