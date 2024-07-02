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
          light: FlutterDeckBackground.image(
            Image.asset('assets/background.png', fit: BoxFit.cover),
          ),
        ),
        footer: const FlutterDeckFooterConfiguration(
          showSlideNumbers: true,
          showSocialHandle: true,
          widget: _SocialHandle(),
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
      lightTheme: PresentationTheme.lightTheme,
    );
  }
}

Future<void> _setupExpressionUIExample() async {
  await setupLocator();

  setupDialogUi();
  setupBottomSheetUi();
}

class _SocialHandle extends StatelessWidget {
  const _SocialHandle();

  @override
  Widget build(BuildContext context) {
    final socialHandle = context.flutterDeck.speakerInfo!.socialHandle;
    final style = FlutterDeckFooterTheme.of(context)
        .socialHandleTextStyle
        ?.copyWith(fontWeight: FontWeight.bold);
    Widget widget = Text(socialHandle, style: style);

    if (Theme.of(context).brightness == Brightness.light) {
      widget = Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          border: Border.all(color: PresentationTheme.primaryColor, width: 4),
          borderRadius: BorderRadius.circular(32),
          color: Colors.white,
        ),
        child: widget,
      );
    }

    return widget;
  }
}
