import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class QualitySectionSlide extends FlutterDeckSlideWidget {
  const QualitySectionSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/quality-section',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.bigFact(
      title: 'High-quality code',
    );
  }
}
