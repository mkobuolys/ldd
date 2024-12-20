import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class TodoAppCodeSlide extends FlutterDeckSlideWidget {
  const TodoAppCodeSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/todo-app-code',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Row(
        children: [
          Expanded(child: Image.asset('assets/basic-todo-cubit.png')),
          const SizedBox(width: 16),
          Expanded(child: Image.asset('assets/optimistic-todo-cubit.png')),
        ],
      ),
    );
  }
}
