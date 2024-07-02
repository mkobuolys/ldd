import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: FlutterDeckTheme.of(context).slideTheme.backgroundColor,
        borderRadius: BorderRadius.circular(32),
      ),
      child: child,
    );
  }
}
