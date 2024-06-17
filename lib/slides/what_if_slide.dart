import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class WhatIfSlide extends FlutterDeckSlideWidget {
  WhatIfSlide(String routeContext)
      : super(
          configuration: FlutterDeckSlideConfiguration(
            route: '/what-if-$routeContext',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Stack(
        children: [
          Image.asset('assets/hehe-cat.png', width: 400),
          const SizedBox(height: 32),
          Center(
            child: Text(
              'What if...?',
              style: FlutterDeckTheme.of(context).textTheme.display,
            ),
          ),
        ],
      ),
    );
  }
}
