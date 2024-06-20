import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:rive/rive.dart';

class RiveFlappyBirdExampleSlide extends FlutterDeckSlideWidget {
  const RiveFlappyBirdExampleSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/rive-flappy-bird-example',
            header: FlutterDeckHeaderConfiguration(
              title: 'Rive Flappy Bird by @rossplaskow',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const _GameView(),
    );
  }
}

class _GameView extends StatefulWidget {
  const _GameView();

  @override
  State<_GameView> createState() => _GameViewState();
}

class _GameViewState extends State<_GameView> {
  var _key = UniqueKey();

  void _onRiveInit(Artboard artboard) {
    final controller = StateMachineController.fromArtboard(
      artboard,
      'State Machine 1',
    );

    if (controller == null) return;

    artboard.addController(controller);
  }

  void _onRestart() => setState(() => _key = UniqueKey());

  @override
  Widget build(BuildContext context) {
    final style = FlutterDeckTheme.of(context).textTheme.title;

    return Row(
      children: [
        Expanded(
          flex: 3,
          child: DeviceFrame(
            device: Devices.ios.iPhone13,
            screen: RiveAnimation.asset(
              key: _key,
              'assets/rive/flappy-bird.riv',
              artboard: '3',
              onInit: _onRiveInit,
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Center(
            child: ElevatedButton.icon(
              icon: Icon(Icons.refresh, size: style.fontSize),
              label: Text('Restart', style: style),
              onPressed: _onRestart,
            ),
          ),
        )
      ],
    );
  }
}
