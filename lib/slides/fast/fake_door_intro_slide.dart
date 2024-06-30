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
      builder: (context) => Row(
        children: [
          Expanded(
            child: Image.asset('assets/spaghetti-method.png', fit: BoxFit.fill),
          ),
          const SizedBox(width: 32),
          Expanded(
            child: Image.asset('assets/fake-door-meme.png', fit: BoxFit.fill),
          ),
        ],
      ),
    );
  }
}
