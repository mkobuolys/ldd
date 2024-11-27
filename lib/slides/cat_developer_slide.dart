import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class CatDeveloperSlide extends FlutterDeckSlideWidget {
  const CatDeveloperSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/cat-developer',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset('assets/cat-developer.png'),
    );
  }
}
