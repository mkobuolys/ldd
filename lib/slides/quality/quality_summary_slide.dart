import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class QualitySummarySlide extends FlutterDeckSlideWidget {
  const QualitySummarySlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/quality-summary',
            header: FlutterDeckHeaderConfiguration(
              title: 'High-quality code* 🐱',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const Placeholder(),
    );
  }
}
