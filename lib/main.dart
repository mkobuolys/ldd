import 'dart:async';

import 'package:expression_ui_example/expression_ui_example.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:ldd/slides/cat_developer_qualities_slide.dart';
import 'package:ldd/slides/presentation_content_warning_slide.dart';
import 'package:ldd/slides/unicorn_developer_qualities_slide.dart';
import 'package:ldd/slides/beautiful/beautiful.dart';
import 'package:ldd/slides/cat_developer_slide.dart';
import 'package:ldd/slides/fast/fast.dart';
import 'package:ldd/slides/feedback_slide.dart';
import 'package:ldd/slides/laziness_driven_development_slide.dart';
import 'package:ldd/slides/presentation_link_slide.dart';
import 'package:ldd/slides/quality/quality.dart';
import 'package:ldd/slides/summary_slide.dart';
import 'package:ldd/slides/thank_you_slide.dart';
import 'package:ldd/slides/title_slide.dart';
import 'package:ldd/slides/unicorn_developer_slide.dart';

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
        footer: const FlutterDeckFooterConfiguration(
          showSlideNumbers: true,
          showSocialHandle: true,
        ),
        slideSize: FlutterDeckSlideSize.fromAspectRatio(
          aspectRatio: const FlutterDeckAspectRatio.ratio16x10(),
          resolution: const FlutterDeckResolution.fhd(),
        ),
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
        const SummarySlide(),
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
    );
  }
}

Future<void> _setupExpressionUIExample() async {
  await setupLocator();

  setupDialogUi();
  setupBottomSheetUi();
}
