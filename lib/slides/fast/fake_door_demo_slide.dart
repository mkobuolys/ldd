import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FakeDoorDemoSlide extends FlutterDeckSlideWidget {
  const FakeDoorDemoSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/fake-door-demo',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Column(
        children: [
          const Expanded(
            flex: 1,
            child: Center(child: _ExportToPdfButton()),
          ),
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                  child: Image.asset('assets/fake-door-view-code.png'),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Image.asset('assets/fake-door-button-code.png'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ExportToPdfButton extends StatelessWidget {
  const _ExportToPdfButton();

  void _onPressed(BuildContext context) => showDialog(
        context: context,
        builder: (context) => const _FeatureComingSoonDialog(),
      );

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => _onPressed(context),
      child: Text(
        'Export to PDF',
        style: FlutterDeckTheme.of(context).textTheme.title,
      ),
    );
  }
}

class _FeatureComingSoonDialog extends StatelessWidget {
  const _FeatureComingSoonDialog();

  @override
  Widget build(BuildContext context) {
    final textTheme = FlutterDeckTheme.of(context).textTheme;

    return AlertDialog(
      title: Text('Thank you for your interest!', style: textTheme.subtitle),
      content: Text(
        'The export to PDF feature is still in development.\n'
        'We will notify you once it is ready. 🚀',
        style: textTheme.bodyMedium,
      ),
      actions: <Widget>[
        TextButton(
          onPressed: Navigator.of(context).pop,
          child: Text('Okay', style: textTheme.bodyLarge),
        ),
      ],
    );
  }
}
