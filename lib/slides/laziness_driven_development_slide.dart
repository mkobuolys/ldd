import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

const _speakerNotes = '''
- Introducing LDD - laziness-driven development
''';

class LazinessDrivenDevelopmentSlide extends FlutterDeckSlideWidget {
  const LazinessDrivenDevelopmentSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/laziness-driven-development',
            speakerNotes: _speakerNotes,
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.bigFact(
      title: 'LDD',
      subtitle: 'Laziness-driven development™',
    );
  }
}
