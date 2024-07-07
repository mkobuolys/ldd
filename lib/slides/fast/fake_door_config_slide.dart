import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FakeDoorConfigSlide extends FlutterDeckSlideWidget {
  const FakeDoorConfigSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/fake-door-config',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Row(
        children: [
          Expanded(
            flex: 1,
            child: Image.asset(
              'assets/firebase-remote-config-logo.png',
              frameBuilder: (context, child, _, __) => Transform.scale(
                scale: 2,
                child: child,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Image.asset('assets/fake-door-config.png'),
          ),
        ],
      ),
    );
  }
}
