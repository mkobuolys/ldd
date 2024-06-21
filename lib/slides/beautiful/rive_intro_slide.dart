import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class RiveIntroSlide extends FlutterDeckSlideWidget {
  const RiveIntroSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/rive-intro',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Center(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Image.asset('assets/rive-slogan.png'),
            ),
            Expanded(
              flex: 5,
              child: Image.asset('assets/rive-editor.png'),
            ),
          ],
        ),
      ),
    );
  }
}
