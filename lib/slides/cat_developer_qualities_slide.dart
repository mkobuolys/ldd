import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

import '../widgets/background_card.dart';

class CatDeveloperQualitiesSlide extends FlutterDeckSlideWidget {
  const CatDeveloperQualitiesSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/cat-developer-qualities',
            steps: 3,
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
  var _showAsterisks = false;

  String getLabel(String label) => '$label${_showAsterisks ? '*' : ''}';

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlideStepsListener(
      listener: (context, stepNumber) {
        if (stepNumber == 2) {
          setState(() {
            _beautifulUiEnabled = true;
            _highQualityCodeEnabled = true;
            _developmentVelocityEnabled = true;
          });
        }

        if (stepNumber == 3) {
          setState(() => _showAsterisks = true);
        }
      },
      child: Center(
        child: BackgroundCard(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              _Switch(
                label: getLabel('Beautiful UI'),
                value: _beautifulUiEnabled,
                onChanged: (value) => setState(
                  () => _beautifulUiEnabled = value,
                ),
              ),
              const SizedBox(height: 100),
              _Switch(
                label: getLabel('High-quality code'),
                value: _highQualityCodeEnabled,
                onChanged: (value) => setState(
                  () => _highQualityCodeEnabled = value,
                ),
              ),
              const SizedBox(height: 100),
              _Switch(
                label: getLabel('Fast product development'),
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
