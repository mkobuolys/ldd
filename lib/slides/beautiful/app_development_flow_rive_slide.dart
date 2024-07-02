import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class AppDevelopmentFlowRiveSlide extends FlutterDeckSlideWidget {
  const AppDevelopmentFlowRiveSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/app-development-flow-rive',
            steps: 2,
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Stack(
        children: [
          const _DesignerMeme(),
          Center(
            child: Text(
              '🧑‍🎨🕑  →  🐱💤  →  📱',
              style: FlutterDeckTheme.of(context)
                  .textTheme
                  .display
                  .copyWith(height: 1.0),
            ),
          ),
        ],
      ),
    );
  }
}

class _DesignerMeme extends StatefulWidget {
  const _DesignerMeme();

  @override
  State<_DesignerMeme> createState() => _DesignerMemeState();
}

class _DesignerMemeState extends State<_DesignerMeme> {
  var _right = -500.0;

  void _onStepChanged(BuildContext context, int stepNumber) {
    if (stepNumber == 2) setState(() => _right = 0);
  }

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlideStepsListener(
      listener: _onStepChanged,
      child: AnimatedPositioned(
        bottom: 0,
        right: _right,
        duration: const Duration(milliseconds: 500),
        child: Image.asset('assets/am-i-a-joke-to-you.png', width: 500),
      ),
    );
  }
}
