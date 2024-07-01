import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class NewAppFeatureSlide extends FlutterDeckSlideWidget {
  const NewAppFeatureSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/new-app-feature',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset(
        'assets/new-feature-meme.png',
        frameBuilder: (context, child, _, __) => Transform.scale(
          scale: 2,
          child: child,
        ),
      ),
    );
  }
}
