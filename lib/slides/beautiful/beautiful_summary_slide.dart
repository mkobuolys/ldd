import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class BeautifulSummarySlide extends FlutterDeckSlideWidget {
  const BeautifulSummarySlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/beautiful-summary',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.quote(
      quote:
          '"The fastest way to build beautiful UIs is to stop building them."',
      attribution: '― Me, just now',
    );
  }
}
