import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class UnicornDeveloperSlide extends FlutterDeckSlideWidget {
  const UnicornDeveloperSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/unicorn-developer',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset('assets/unicorn-developer.png'),
    );
  }
}
