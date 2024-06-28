import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class RiveResponsiveExampleCodeSlide extends FlutterDeckSlideWidget {
  const RiveResponsiveExampleCodeSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/rive-responsive-example-code',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Row(
        children: [
          Expanded(
            child: Image.asset('assets/responsive-portfolio-init-code.png'),
          ),
          const SizedBox(width: 32),
          Expanded(
            child: Image.asset('assets/responsive-portfolio-build-code.png'),
          ),
        ],
      ),
    );
  }
}
