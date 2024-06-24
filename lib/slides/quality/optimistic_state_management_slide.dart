import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class OptimisticStateManagementSlide extends FlutterDeckSlideWidget {
  const OptimisticStateManagementSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/optimistic-state-management',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/state_management_optimistic.png',
      ),
    );
  }
}
