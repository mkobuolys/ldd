import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FakeDoorIntroSlide extends FlutterDeckSlideWidget {
  const FakeDoorIntroSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/fake-door-intro',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const Placeholder(),
    );
  }
}
