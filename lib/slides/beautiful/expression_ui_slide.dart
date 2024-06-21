import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ExpressionUiSlide extends FlutterDeckSlideWidget {
  const ExpressionUiSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/expression-ui',
            header: FlutterDeckHeaderConfiguration(title: 'ExpressionUI'),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const Placeholder(),
    );
  }
}
