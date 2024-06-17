import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

const _speakerNotes = '''
Then I started thinking about the cat developer. A developer who manages to
deliver features quickly, but also keeps a high-quality design and codebase.
And the only way to do that is by finding shortcuts, cutting corners, and
sometimes even breaking the rules.
''';

class CatDeveloperSlide extends FlutterDeckSlideWidget {
  const CatDeveloperSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/cat-developer',
            speakerNotes: _speakerNotes,
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset('assets/cat-developer.png'),
    );
  }
}
