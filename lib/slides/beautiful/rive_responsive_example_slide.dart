import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:rive/rive.dart';

const _defaultWidth = 1500.0;

class RiveResponsiveExampleSlide extends FlutterDeckSlideWidget {
  const RiveResponsiveExampleSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/rive-responsive-example',
            header: FlutterDeckHeaderConfiguration(
              title: 'Responsive porfolio website by @rossplaskow',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const _ResponsiveView(),
    );
  }
}

class _ResponsiveView extends StatefulWidget {
  const _ResponsiveView();

  @override
  State<_ResponsiveView> createState() => _ResponsiveViewState();
}

class _ResponsiveViewState extends State<_ResponsiveView>
    with SingleTickerProviderStateMixin {
  late SMINumber _widthInput;
  var _width = _defaultWidth;

  void _onRiveInit(Artboard artboard) {
    final controller = StateMachineController.fromArtboard(
      artboard,
      'State Machine 1',
    );

    if (controller == null) return;

    artboard.addController(controller);

    _widthInput = controller.findSMI<SMINumber>('width')!
      ..change(_defaultWidth);
  }

  String get _viewSizeLabel => switch (_width) {
        > 1050 => 'Desktop',
        > 850 => 'Tablet',
        _ => 'Mobile',
      };

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _viewSizeLabel,
              style: FlutterDeckTheme.of(context).textTheme.title,
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 700,
              child: Slider(
                value: _width,
                min: 600,
                max: _defaultWidth,
                onChanged: (value) {
                  _widthInput.change(value);

                  setState(() => _width = value);
                },
              ),
            ),
          ],
        ),
        Expanded(
          child: Center(
            child: Container(
              color: Colors.white,
              height: 900,
              width: 900,
              child: RiveAnimation.asset(
                'assets/rive/responsive-website.riv',
                artboard: 'website',
                placeHolder: const CircularProgressIndicator.adaptive(),
                onInit: _onRiveInit,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
