import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

const _warning = '⚠️ WARNING ⚠️\n\n'
    'This presentation contains ideas that may be sarcastic, slightly '
    'dangerous, and definitely not pre-approved by your direct manager.\n\n'
    'Use the information at your own risk. The author is not responsible for '
    'any damage to your career, reputation, or sanity that may result from '
    'following the practices described in this presentation.';

class PresentationContentWarningSlide extends FlutterDeckSlideWidget {
  const PresentationContentWarningSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/presentation-content-warning',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Center(
        child: Text(
          _warning,
          style: FlutterDeckTheme.of(context).textTheme.title,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
