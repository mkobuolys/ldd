import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class BeautifulSummarySlide extends FlutterDeckSlideWidget {
  const BeautifulSummarySlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/beautiful-summary',
            hidden: true,
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.quote(
      quote: '"If it works, don\'t touch it."',
    );
  }
}
