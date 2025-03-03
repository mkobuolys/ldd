import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class SlowAppReviewSlide extends FlutterDeckSlideWidget {
  const SlowAppReviewSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/slow-app-review',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/slow-app-review.png',
        frameBuilder: (context, child, _, __) => Transform.scale(
          scale: 1.5,
          child: child,
        ),
      ),
    );
  }
}
