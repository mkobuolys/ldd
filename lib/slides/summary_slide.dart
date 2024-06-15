import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class SummarySlide extends FlutterDeckSlideWidget {
  const SummarySlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/summary',
            header: FlutterDeckHeaderConfiguration(title: 'Summary'),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      leftBuilder: (context) => const Placeholder(),
      rightBuilder: (context) => const Placeholder(),
    );
  }
}
