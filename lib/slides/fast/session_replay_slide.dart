import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class SessionReplaySlide extends FlutterDeckSlideWidget {
  const SessionReplaySlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/session-replay',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset('assets/session-replay.png'),
    );
  }
}
