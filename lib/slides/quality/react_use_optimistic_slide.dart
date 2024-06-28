import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ReactUseOptimisticSlide extends FlutterDeckSlideWidget {
  const ReactUseOptimisticSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/react-use-optimistic',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset('assets/react-use-optimistic.png'),
      label: 'https://react.dev/reference/react/useOptimistic',
    );
  }
}
