import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class LazinessDrivenDevelopmentSlide extends FlutterDeckSlideWidget {
  const LazinessDrivenDevelopmentSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/laziness-driven-development',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.bigFact(
      title: 'LDD',
      subtitle: 'Laziness-driven development™',
    );
  }
}
