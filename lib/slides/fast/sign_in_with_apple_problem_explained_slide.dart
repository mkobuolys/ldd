import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class SignInWithAppleProblemExplainedSlide extends FlutterDeckSlideWidget {
  const SignInWithAppleProblemExplainedSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/sign-in-with-apple-problem-explained',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/sign-in-with-apple-problem-explained.png',
      ),
    );
  }
}
