import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class PresentationLinkSlide extends FlutterDeckSlideWidget {
  const PresentationLinkSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/presentation-link',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.bigFact(
      title: 'https://kazlauskas.dev/ldd',
    );
  }
}
