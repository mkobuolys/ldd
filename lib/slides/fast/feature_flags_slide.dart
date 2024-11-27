import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FeatureFlagsSlide extends FlutterDeckSlideWidget {
  const FeatureFlagsSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/feature-flags',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/feature-flags.png',
        frameBuilder: (context, child, _, __) => Transform.scale(
          scale: 1.5,
          child: child,
        ),
      ),
      label: 'https://semaphoreci.com/blog/feature-flags',
    );
  }
}
