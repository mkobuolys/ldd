import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class SignInWithAppleProblemSlide extends FlutterDeckSlideWidget {
  const SignInWithAppleProblemSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/sign-in-with-apple-problem',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Text(
                  'iPhone app review',
                  style: FlutterDeckTheme.of(context).textTheme.title,
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Image.asset('assets/sign-in-with-apple.png'),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Image.asset('assets/sign-up-name.png'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          Center(
            child: Text(
              '→',
              style: FlutterDeckTheme.of(context).textTheme.display,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              children: [
                Text(
                  'iPad app review',
                  style: FlutterDeckTheme.of(context).textTheme.title,
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Image.asset(
                          'assets/sign-in-with-apple-second.png',
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Image.asset('assets/sign-up-name-empty.png'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
