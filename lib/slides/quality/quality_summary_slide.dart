import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class QualitySummarySlide extends FlutterDeckSlideWidget {
  const QualitySummarySlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/quality-summary',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.quote(
      quote: '"It is better to be roughly right than precisely wrong."',
      attribution: '― John Maynard Keynes',
    );
  }
}
