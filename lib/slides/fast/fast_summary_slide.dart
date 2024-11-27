import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FastSummarySlide extends FlutterDeckSlideWidget {
  const FastSummarySlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/fast-summary',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.quote(
      // quote: '"Before software can be reusable it first has to be usable."',
      quote: '"The older I get, the more I believe that the only way to become '
          'a better programmer is by not programming."',
      attribution: '― Jeff Atwood',
    );
  }
}
