import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class SignUpFormToggleSlide extends FlutterDeckSlideWidget {
  const SignUpFormToggleSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/sign-up-form-toggle',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Row(
        children: [
          Expanded(child: Image.asset('assets/sign-up-name-empty.png')),
          Expanded(child: Image.asset('assets/sign-up-no-name.png')),
        ],
      ),
    );
  }
}
