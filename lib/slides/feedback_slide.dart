import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FeedbackSlide extends FlutterDeckSlideWidget {
  const FeedbackSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/feedback',
            header: FlutterDeckHeaderConfiguration(
              title: 'Share your feedback 💙',
            ),
            hidden: true,
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
      imageBuilder: (context) => Image.asset('assets/feedback-qr-code.png'),
    );
  }
}
