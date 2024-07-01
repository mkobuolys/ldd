import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class SuspiciousFeatureSlide extends FlutterDeckSlideWidget {
  const SuspiciousFeatureSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/suspicious-feature',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/fry-futurama.gif',
        frameBuilder: (context, child, _, __) => Transform.scale(
          scale: 2,
          child: child,
        ),
      ),
    );
  }
}
