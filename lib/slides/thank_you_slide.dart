import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

import '../theme.dart';

class ThankYouSlide extends FlutterDeckSlideWidget {
  const ThankYouSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/thank-you',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    final theme = FlutterDeckTheme.of(context);
    final color = Theme.of(context).brightness == Brightness.light
        ? PresentationTheme.primaryColor
        : theme.materialTheme.colorScheme.onSurface;

    return FlutterDeckSlide.blank(
      builder: (context) => Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Thank you! 🐱',
              style: TextStyle(
                color: color,
                fontSize: 96,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 48),
            FlutterDeckSpeakerInfoWidget(
              speakerInfo: context.flutterDeck.speakerInfo!,
            ),
          ],
        ),
      ),
    );
  }
}
