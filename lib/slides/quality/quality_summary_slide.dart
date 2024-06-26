import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

const _speakerNotes = '''
- Improves UX
  - Does not block user flow
  - Hides connectivity issues
- More code to maintain
''';

class QualitySummarySlide extends FlutterDeckSlideWidget {
  const QualitySummarySlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/quality-summary',
            header: FlutterDeckHeaderConfiguration(
              title: 'High-quality code* 🐱',
            ),
            speakerNotes: _speakerNotes,
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => FlutterDeckBulletList(
        items: const [
          'Improves UX',
          'More code to maintain',
        ],
      ),
    );
  }
}
