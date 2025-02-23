import 'dart:async';

import 'package:expression_ui_example/expression_ui_example.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

import 'slides/slides.dart';
import 'theme.dart';

void main() {
  runApp(const _FlutterDeck());
}

class _FlutterDeck extends StatefulWidget {
  const _FlutterDeck();

  @override
  State<_FlutterDeck> createState() => _FlutterDeckState();
}

class _FlutterDeckState extends State<_FlutterDeck> {
  @override
  void initState() {
    super.initState();

    unawaited(_setupExpressionUIExample());
  }

  @override
  Widget build(BuildContext context) {
    return FlutterDeckApp(
      configuration: FlutterDeckConfiguration(
        background: FlutterDeckBackgroundConfiguration(
          light: FlutterDeckBackground.gradient(
            RadialGradient(
              colors: [
                PresentationTheme.primaryColor.withValues(alpha: 0.05),
                PresentationTheme.primaryColor.withValues(alpha: 0.1),
                PresentationTheme.primaryColor.withValues(alpha: 0.15),
              ],
            ),
          ),
        ),
        footer: const FlutterDeckFooterConfiguration(
          showSlideNumbers: true,
          showSocialHandle: true,
        ),
        slideSize: FlutterDeckSlideSize.fromAspectRatio(
          aspectRatio: const FlutterDeckAspectRatio.ratio16x10(),
          resolution: const FlutterDeckResolution.fhd(),
        ),
        transition: const FlutterDeckTransition.fade(),
      ),
      slides: [
        const TitleSlide(),
        const PresentationContentWarningSlide(),
        const UnicornDeveloperSlide(),
        const UnicornDeveloperQualitiesSlide(),
        const CatDeveloperSlide(),
        const LazinessDrivenDevelopmentSlide(),
        const CatDeveloperQualitiesSlide(),
        ...beautifulSectionSlides,
        ...qualitySectionSlides,
        ...fastSectionSlides,
        const PresentationLinkSlide(),
        const ThankYouSlide(),
        const FeedbackSlide(),
      ],
      speakerInfo: const FlutterDeckSpeakerInfo(
        name: 'Mangirdas Kazlauskas',
        description: 'Mobile Tech Lead @ Billo',
        socialHandle: '@mkobuolys | kazlauskas.dev',
        imagePath: 'assets/speaker.png',
      ),
      darkTheme: PresentationTheme.darkTheme,
      lightTheme: PresentationTheme.lightTheme,
    );
  }
}

Future<void> _setupExpressionUIExample() async {
  await setupLocator();

  setupDialogUi();
  setupBottomSheetUi();
}
