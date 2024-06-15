import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FeedbackSlide extends FlutterDeckSlideWidget {
  const FeedbackSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/feedback',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const Placeholder(),
    );
    // return FlutterDeckSlide.image(
    //   imageBuilder: (context) => Image.asset('assets/'),
    // );
  }
}
