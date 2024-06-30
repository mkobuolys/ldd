import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

const _speakerNotes = '''
- Beautiful UI
- High-quality code
- Fast product development

Pick two
''';

class UnicornDeveloperQualitiesSlide extends FlutterDeckSlideWidget {
  const UnicornDeveloperQualitiesSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/unicorn-developer-qualities',
            speakerNotes: _speakerNotes,
            steps: 4,
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
  var _beautifulUiEnabled = true;
  var _highQualityCodeEnabled = true;
  var _developmentVelocityEnabled = false;

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlideStepsListener(
      listener: (context, stepNumber) {
        if (stepNumber == 2) {
          setState(() {
            _beautifulUiEnabled = true;
            _highQualityCodeEnabled = false;
            _developmentVelocityEnabled = true;
          });
        }

        if (stepNumber == 3) {
          setState(() {
            _beautifulUiEnabled = false;
            _highQualityCodeEnabled = true;
            _developmentVelocityEnabled = true;
          });
        }

        if (stepNumber == 4) {
          setState(() {
            _beautifulUiEnabled = true;
            _highQualityCodeEnabled = true;
            _developmentVelocityEnabled = false;
          });
        }
      },
      child: Center(
        child: FractionallySizedBox(
          widthFactor: 0.9,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _Switch(
                label: 'Beautiful UI',
                value: _beautifulUiEnabled,
                onChanged: (value) => setState(
                  () => _beautifulUiEnabled = value,
                ),
              ),
              const SizedBox(height: 100),
              _Switch(
                label: 'High-quality code',
                value: _highQualityCodeEnabled,
                onChanged: (value) => setState(
                  () => _highQualityCodeEnabled = value,
                ),
              ),
              const SizedBox(height: 100),
              _Switch(
                label: 'Fast product development',
                value: _developmentVelocityEnabled,
                onChanged: (value) => setState(
                  () => _developmentVelocityEnabled = value,
                ),
              ),
            ],
          ),
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
