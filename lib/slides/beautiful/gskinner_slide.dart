import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:gskinner_example/gskinner_example.dart';

class GskinnerSlide extends FlutterDeckSlideWidget {
  const GskinnerSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/gskinner',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    final textStyle = FlutterDeckTheme.of(context).textTheme.title;

    return FlutterDeckSlide.blank(
      builder: (context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 3,
            child: DeviceFrame(
              device: Devices.ios.iPhone13,
              screen: const GskinnerExampleApp(),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset('assets/gskinner-logo.png', width: 500),
                ),
                const SizedBox(height: 64),
                Text('\u2022 flutter_animate', style: textStyle),
                Text('\u2022 flutter_custom_carousel', style: textStyle),
                Text('\u2022 context_menus', style: textStyle),
                Text('\u2022 ...', style: textStyle),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
