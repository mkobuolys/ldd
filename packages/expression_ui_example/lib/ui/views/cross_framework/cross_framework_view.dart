import 'package:expression_ui_example/constants/expression_constants.dart';
import 'package:expression_ui_example/expression_ui/expression_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'cross_framework_viewmodel.dart';

class CrossFrameworkView extends StackedView<CrossFrameworkViewModel> {
  const CrossFrameworkView({super.key});

  @override
  Widget builder(
    BuildContext context,
    CrossFrameworkViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: ExpressionView(
        artboardName: ksCrossFrameworkView,
        onEvent: (_) => viewModel.navigateToNextView(),
      ),
    );
  }

  @override
  CrossFrameworkViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CrossFrameworkViewModel();
}
