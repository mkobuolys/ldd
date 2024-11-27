import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FakeDoorIntroSlide extends FlutterDeckSlideWidget {
  const FakeDoorIntroSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/fake-door-intro',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/fake-door-explained.png',
        frameBuilder: (context, child, _, __) => Transform.scale(
          scale: 2,
          child: child,
        ),
      ),
      label: 'https://keyua.org/blog/types-of-minimum-viable-product/',
    );
  }
}
