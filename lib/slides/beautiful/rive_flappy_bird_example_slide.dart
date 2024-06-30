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

  void _onRestart() => setState(() => _key = UniqueKey());

  @override
  Widget build(BuildContext context) {
    final textStyle = FlutterDeckTheme.of(context).textTheme.title;

    return Row(
      children: [
        Expanded(
          child: DeviceFrame(
            device: Devices.ios.iPhone13,
            screen: _FlappyBird(key: _key),
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: ElevatedButton.icon(
                  icon: Icon(Icons.refresh, size: textStyle.fontSize),
                  label: Text('Restart', style: textStyle),
                  onPressed: _onRestart,
                ),
              ),
              const SizedBox(height: 16),
              Image.asset('assets/flappy-bird-code.png'),
            ],
          ),
        )
      ],
    );
  }
}

class _FlappyBird extends StatelessWidget {
  const _FlappyBird({super.key});

  @override
  Widget build(BuildContext context) {
    return const RiveAnimation.asset(
      'assets/rive/flappy-bird.riv',
      artboard: '3',
      stateMachines: ['State Machine 1'],
      placeHolder: CircularProgressIndicator.adaptive(),
    );
  }
}
