import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class BonusStorySectionSlide extends FlutterDeckSlideWidget {
  const BonusStorySectionSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/bonus-story-section',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.bigFact(
      title: 'Fake it till you make it',
      subtitle: 'Bonus story',
    );
  }
}
