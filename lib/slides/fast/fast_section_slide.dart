import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FastSectionSlide extends FlutterDeckSlideWidget {
  const FastSectionSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/fast-section',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.bigFact(
      title: 'Development velocity',
    );
  }
}
