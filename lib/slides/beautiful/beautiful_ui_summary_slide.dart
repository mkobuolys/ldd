import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class BeautifulUiSummarySlide extends FlutterDeckSlideWidget {
  const BeautifulUiSummarySlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/beautiful-ui-summary',
            header: FlutterDeckHeaderConfiguration(title: 'Beautiful UI* 🐱'),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => FlutterDeckBulletList(
        items: const [
          'Not very accessible',
          'Workarounds go brrr 🚀',
          "You (probably) can't change it",
        ],
      ),
    );
  }
}
