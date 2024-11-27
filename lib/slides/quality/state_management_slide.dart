import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

import '../../widgets/background_card.dart';

class StateManagementSlide extends FlutterDeckSlideWidget {
  const StateManagementSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/state-management',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Center(
        child: BackgroundCard(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'POV: Talking about state management in app development',
                style: FlutterDeckTheme.of(context).textTheme.header,
              ),
              const SizedBox(height: 32),
              Image.asset('assets/bad-at-math.png'),
            ],
          ),
        ),
      ),
    );
  }
}
