import 'package:device_preview/device_preview.dart';
import 'package:expression_ui_example/expression_ui_example.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ExpressionUiSlide extends FlutterDeckSlideWidget {
  const ExpressionUiSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/expression-ui',
            header: FlutterDeckHeaderConfiguration(
              title: 'ExpressionUI by @DaneMackier (FilledStacks)',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    final textStyle = FlutterDeckTheme.of(context).textTheme.title;

    return FlutterDeckSlide.blank(
      builder: (context) => Row(
        children: [
          Expanded(
            child: DeviceFrame(
              device: Devices.ios.iPhone13,
              screen: const ExpressionUIExampleApp(),
            ),
          ),
          Expanded(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('\u2022 Responsive', style: textStyle),
                  Text('\u2022 Scrollable', style: textStyle),
                  Text('\u2022 Composable', style: textStyle),
                  Text('\u2022 In-sync with data', style: textStyle),
                  Text('\u2022 ...', style: textStyle),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
