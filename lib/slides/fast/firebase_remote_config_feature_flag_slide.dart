import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FirebaseRemoteConfigFeatureFlagSlide extends FlutterDeckSlideWidget {
  const FirebaseRemoteConfigFeatureFlagSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/firebase-remote-config-feature-flag',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Row(
        children: [
          Expanded(
            child: Image.asset('assets/next-app-version-condition.png'),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Image.asset('assets/hide-name-fields-feature-flag.png'),
          ),
        ],
      ),
    );
  }
}
