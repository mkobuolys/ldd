import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FastSummarySlide extends FlutterDeckSlideWidget {
  const FastSummarySlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/fast-summary',
            header: FlutterDeckHeaderConfiguration(
              title: 'Fast product development* 🐱',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const Placeholder(),
    );
  }
}
