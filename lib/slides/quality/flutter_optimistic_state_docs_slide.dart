import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FlutterOptimisticStateDocsSlide extends FlutterDeckSlideWidget {
  const FlutterOptimisticStateDocsSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/flutter-optimistic-state-docs',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/flutter-optimistic-state-docs.png',
      ),
      label: 'https://docs.flutter.dev/cookbook/architecture/optimistic-state',
    );
  }
}
