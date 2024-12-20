import 'package:expression_ui_example/expression_ui/expression_view.dart';

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'theme_view_model.dart';

class ThemeView extends StackedView<ThemeViewModel> {
  const ThemeView({super.key});

  @override
  Widget builder(
    BuildContext context,
    ThemeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: ExpressionView(
        artboardName:
            MediaQuery.of(context).platformBrightness == Brightness.light
                ? 'home-light'
                : 'home-dark',
        onEvent: (_) {},
      ),
    );
  }

  @override
  ThemeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ThemeViewModel();
}
