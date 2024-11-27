import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class AppSubmissionRejectedSlide extends FlutterDeckSlideWidget {
  const AppSubmissionRejectedSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/app-submission-rejected',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/app-submission-problems.png',
      ),
    );
  }
}
