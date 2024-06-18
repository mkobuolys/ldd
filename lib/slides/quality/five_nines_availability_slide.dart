import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FiveNinesAvailabilitySlide extends FlutterDeckSlideWidget {
  const FiveNinesAvailabilitySlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/five-nines-availability',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Row(
        children: [
          Expanded(child: Image.asset('assets/zoom-availability.png')),
          const SizedBox(width: 32),
          Expanded(child: Image.asset('assets/aws-availability.png')),
        ],
      ),
    );
  }
}
