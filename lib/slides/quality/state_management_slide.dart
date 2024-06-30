import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class StateManagementSlide extends FlutterDeckSlideWidget {
  const StateManagementSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/state-management',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'POV: Talking about state management in Flutter',
              style: FlutterDeckTheme.of(context).textTheme.header,
            ),
            const SizedBox(height: 32),
            Image.asset('assets/bad-at-math.png'),
          ],
        ),
      ),
    );
  }
}
