import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

const _steps = [
  'Submit app for review',
  'Hide name fields feature toggle: ON',
  'Wait for review',
  'App approved!',
  'Hide name fields feature toggle: OFF',
];

class SignUpFormToggleSlide extends FlutterDeckSlideWidget {
  const SignUpFormToggleSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/sign-up-form-toggle',
            steps: 5,
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => FlutterDeckSlideStepsBuilder(
        builder: (context, step) => Stack(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Image.asset(
                    step > 1 && step < 5
                        ? 'assets/sign-up-no-name.png'
                        : 'assets/sign-up-name-empty.png',
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (final (index, item) in _steps.indexed)
                        Opacity(
                          opacity: step >= index + 1 ? 1 : 0,
                          child: Text(
                            '${index + 1}. $item',
                            style: FlutterDeckTheme.of(context).textTheme.title,
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
            if (step == 4)
              ColoredBox(
                color: Colors.black.withOpacity(0.8),
                child: Center(
                  child: Image.asset('assets/submission-successful.png'),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
