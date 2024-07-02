import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

import '../widgets/background_card.dart';

class PresentationContentWarningSlide extends FlutterDeckSlideWidget {
  const PresentationContentWarningSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/presentation-content-warning',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Center(
        child: BackgroundCard(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '⚠️ WARNING ⚠️',
                style: FlutterDeckTheme.of(context)
                    .textTheme
                    .display
                    .copyWith(color: Colors.orange[700]),
              ),
              const SizedBox(height: 96),
              Text(
                'This presentation contains ideas that may be sarcastic, slightly '
                'dangerous, and definitely not pre-approved by your direct manager.',
                style: FlutterDeckTheme.of(context).textTheme.title,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 64),
              Text(
                'Use the information at your own risk. The author is not responsible for '
                'any damage to your career, reputation, or sanity that may result from '
                'following the practices described in this presentation.',
                style: FlutterDeckTheme.of(context).textTheme.title,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
