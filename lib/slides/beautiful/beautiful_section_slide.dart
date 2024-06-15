import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class BeautifulSectionSlide extends FlutterDeckSlideWidget {
  const BeautifulSectionSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/beautiful-section',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.bigFact(
      title: 'Beautiful UI',
    );
  }
}
