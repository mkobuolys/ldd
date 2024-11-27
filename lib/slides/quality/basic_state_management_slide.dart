import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class BasicStateManagementSlide extends FlutterDeckSlideWidget {
  const BasicStateManagementSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/basic-state-management',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/state-management-basic.png'),
            const SizedBox(height: 32),
            const _ProgressButton(),
          ],
        ),
      ),
    );
  }
}

enum _ButtonState {
  idle,
  loading,
  success,
  error,
}

class _ProgressButton extends StatefulWidget {
  const _ProgressButton();

  @override
  State<_ProgressButton> createState() => _ProgressButtonState();
}

class _ProgressButtonState extends State<_ProgressButton> {
  var _buttonState = _ButtonState.idle;
  var _successStateNext = true;

  WidgetStateProperty<Color?> get _backgroundColor => switch (_buttonState) {
        _ButtonState.success => const WidgetStatePropertyAll(Colors.green),
        _ButtonState.error => const WidgetStatePropertyAll(Colors.red),
        _ => const WidgetStatePropertyAll(Colors.blue),
      };

  String get _label => switch (_buttonState) {
        _ButtonState.idle => 'Click me!',
        _ButtonState.loading => 'Loading...',
        _ButtonState.success => 'Success!',
        _ButtonState.error => 'Oops, error!',
      };

  void _onPressed() => setState(
        () {
          _buttonState = _ButtonState.loading;

          Future.delayed(
            const Duration(seconds: 2),
            () {
              setState(() {
                _buttonState = _successStateNext
                    ? _ButtonState.success
                    : _ButtonState.error;
                _successStateNext = !_successStateNext;
              });
            },
          );
        },
      );

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: _buttonState != _ButtonState.loading ? _onPressed : null,
      style: ButtonStyle(backgroundColor: _backgroundColor),
      child: _buttonState == _ButtonState.loading
          ? const Padding(
              padding: EdgeInsets.all(20.0),
              child: CircularProgressIndicator(
                strokeWidth: 8,
                valueColor: AlwaysStoppedAnimation(Colors.white),
              ),
            )
          : Text(
              _label,
              style: FlutterDeckTheme.of(context)
                  .textTheme
                  .title
                  .copyWith(color: Colors.white),
            ),
    );
  }
}
