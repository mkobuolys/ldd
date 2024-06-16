import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

const _speakerNotes = '''
- Beautiful UI
- High-quality code
- Development velocity

Pick two
''';

class AppQualitiesSlide extends FlutterDeckSlideWidget {
  const AppQualitiesSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/app-qualities',
            speakerNotes: _speakerNotes,
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const _Switches(),
    );
  }
}

class _Switches extends StatefulWidget {
  const _Switches();

  @override
  State<_Switches> createState() => _SwitchesState();
}

class _SwitchesState extends State<_Switches> {
  var _beautifulUiEnabled = false;
  var _highQualityCodeEnabled = false;
  var _developmentVelocityEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FractionallySizedBox(
        widthFactor: 0.75,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _Switch(
              label: 'Beautiful UI',
              value: _beautifulUiEnabled,
              onChanged: (value) => setState(() {
                _beautifulUiEnabled = value;

                if (_beautifulUiEnabled && _highQualityCodeEnabled) {
                  _developmentVelocityEnabled = false;
                }
              }),
            ),
            const SizedBox(height: 100),
            _Switch(
              label: 'High-quality code',
              value: _highQualityCodeEnabled,
              onChanged: (value) => setState(() {
                _highQualityCodeEnabled = value;

                if (_highQualityCodeEnabled && _developmentVelocityEnabled) {
                  _beautifulUiEnabled = false;
                }
              }),
            ),
            const SizedBox(height: 100),
            _Switch(
              label: 'Development velocity',
              value: _developmentVelocityEnabled,
              onChanged: (value) => setState(() {
                _developmentVelocityEnabled = value;

                if (_developmentVelocityEnabled && _beautifulUiEnabled) {
                  _highQualityCodeEnabled = false;
                }
              }),
            ),
          ],
        ),
      ),
    );
  }
}

class _Switch extends StatelessWidget {
  const _Switch({
    required this.label,
    required this.value,
    required this.onChanged,
  });

  final String label;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 150,
          child: FittedBox(
            fit: BoxFit.fill,
            child: Switch.adaptive(value: value, onChanged: onChanged),
          ),
        ),
        const SizedBox(width: 16),
        Text(label, style: FlutterDeckTheme.of(context).textTheme.display)
      ],
    );
  }
}
