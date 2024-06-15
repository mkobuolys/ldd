import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:ldd/slides/title_slide.dart';

void main() {
  runApp(const _FlutterDeck());
}

class _FlutterDeck extends StatelessWidget {
  const _FlutterDeck();

  @override
  Widget build(BuildContext context) {
    return FlutterDeckApp(
      configuration: FlutterDeckConfiguration(
        footer: const FlutterDeckFooterConfiguration(
          showSlideNumbers: true,
          showSocialHandle: true,
        ),
        slideSize: FlutterDeckSlideSize.fromAspectRatio(
          aspectRatio: const FlutterDeckAspectRatio.ratio16x10(),
          resolution: const FlutterDeckResolution.fhd(),
        ),
      ),
      slides: const [
        TitleSlide(),
      ],
      speakerInfo: const FlutterDeckSpeakerInfo(
        name: 'Mangirdas Kazlauskas',
        description: 'Mobile Tech Lead @ Billo',
        socialHandle: '@mkobuolys',
        imagePath: 'assets/speaker.png',
      ),
    );
  }
}
