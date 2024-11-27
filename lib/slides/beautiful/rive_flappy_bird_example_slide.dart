import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:rive/rive.dart';

class RiveFlappyBirdExampleSlide extends FlutterDeckSlideWidget {
  const RiveFlappyBirdExampleSlide({super.key})
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
  var _initialLoad = true;

  void _onRestart() => setState(() {
        _key = UniqueKey();
        _initialLoad = false;
      });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: DeviceFrame(
            device: Devices.ios.iPhone13,
            screen: Stack(
              children: [
                _FlappyBird(key: _key),
                if (_initialLoad)
                  Container(
                    color: Colors.black,
                    child: Center(
                      child: _Button(
                        icon: Icons.play_arrow,
                        label: 'Play',
                        onPressed: _onRestart,
                      ),
                    ),
                  )
                else
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: _Button(
                      icon: Icons.refresh,
                      label: 'Restart',
                      onPressed: _onRestart,
                    ),
                  ),
              ],
            ),
          ),
        ),
        Expanded(child: Image.asset('assets/flappy-bird-code.png'))
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

class _Button extends StatelessWidget {
  const _Button({
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final textStyle = FlutterDeckTheme.of(context).textTheme.subtitle;

    return ElevatedButton.icon(
      icon: Icon(icon, size: textStyle.fontSize),
      label: Text(label, style: textStyle),
      onPressed: onPressed,
    );
  }
}
