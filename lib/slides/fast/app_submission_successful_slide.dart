import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class AppSubmissionSuccessfulSlide extends FlutterDeckSlideWidget {
  const AppSubmissionSuccessfulSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/app-submission-successful',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/submission-successful.png',
      ),
    );
  }
}
