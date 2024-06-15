import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

const _speakerNotes = '''
- Beautiful UI
- High-quality code
- Development velocity

Pick two
''';

class AppQualitiesSlide extends FlutterDeckSlideWidget {
  const AppQualitiesSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/app-qualities',
            speakerNotes: _speakerNotes,
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const Placeholder(),
    );
  }
}
