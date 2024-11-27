import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class TitleSlide extends FlutterDeckSlideWidget {
  const TitleSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/title',
            footer: FlutterDeckFooterConfiguration(showFooter: false),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Cat-like Development 🐱',
              style: TextStyle(fontSize: 96, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Flutter for Efficiency',
              style: TextStyle(fontSize: 80, height: 1.0),
            ),
            const SizedBox(height: 64),
            FlutterDeckSpeakerInfoWidget(
              speakerInfo: context.flutterDeck.speakerInfo!,
            ),
          ],
        ),
      ),
    );
  }
}
