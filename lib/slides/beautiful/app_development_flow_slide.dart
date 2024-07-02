import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class AppDevelopmentFlowSlide extends FlutterDeckSlideWidget {
  const AppDevelopmentFlowSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/app-development-flow',
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
              '🧑‍🎨🕑  →  👨‍💻🕑  →  📱',
              style: FlutterDeckTheme.of(context)
                  .textTheme
                  .display
                  .copyWith(height: 1.0),
            ),
            const SizedBox(height: 128),
            Text(
              '🦄💻🕒  →  📱',
              style: FlutterDeckTheme.of(context)
                  .textTheme
                  .display
                  .copyWith(height: 1.0),
            ),
          ],
        ),
      ),
    );
  }
}
