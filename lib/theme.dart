import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

abstract final class PresentationTheme {
  const PresentationTheme._();

  static const primaryColor = Color(0xFF0014E6);

  static final lightTheme = FlutterDeckThemeData.fromTheme(
    ThemeData.from(
      colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
      useMaterial3: true,
    ),
  ).copyWith(
    bigFactSlideTheme: const FlutterDeckBigFactSlideThemeData(
      titleTextStyle: TextStyle(
        color: primaryColor,
        fontSize: 128,
        fontWeight: FontWeight.bold,
      ),
      subtitleTextStyle: TextStyle(
        color: primaryColor,
        fontSize: 64,
        fontWeight: FontWeight.w500,
        height: 1.0,
      ),
    ),
    quoteSlideTheme: const FlutterDeckQuoteSlideThemeData(
      quoteTextStyle: TextStyle(
        color: primaryColor,
        fontSize: 64,
        fontWeight: FontWeight.bold,
      ),
      attributionTextStyle: TextStyle(
        color: primaryColor,
        fontSize: 48,
        fontWeight: FontWeight.w500,
      ),
    ),
    speakerInfoWidgetTheme: const FlutterDeckSpeakerInfoWidgetThemeData(
      descriptionTextStyle: TextStyle(color: primaryColor, fontSize: 24),
      nameTextStyle: TextStyle(
        color: primaryColor,
        fontSize: 40,
        fontWeight: FontWeight.bold,
      ),
      socialHandleTextStyle: TextStyle(color: primaryColor, fontSize: 24),
    ),
  );
}
