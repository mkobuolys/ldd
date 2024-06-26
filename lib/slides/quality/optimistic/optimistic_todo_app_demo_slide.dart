import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:optimistic_todo_app/app.dart';

class OptimisticTodoAppDemoSlide extends FlutterDeckSlideWidget {
  const OptimisticTodoAppDemoSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/optimistic-todo-app-demo',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const _DemoView(),
    );
  }
}

class _DemoView extends StatefulWidget {
  const _DemoView();

  @override
  State<_DemoView> createState() => _DemoViewState();
}

class _DemoViewState extends State<_DemoView> {
  var _noConnection = false;

  void _toggleConnection(bool value) => setState(() => _noConnection = value);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: _TodoApp(
            header: 'Basic',
            noConnection: _noConnection,
            useOptimisticStateManagement: false,
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _noConnection ? 'Offline' : 'Online',
                style: FlutterDeckTheme.of(context).textTheme.title,
              ),
              SizedBox(
                height: 80,
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: Switch.adaptive(
                    value: _noConnection,
                    onChanged: _toggleConnection,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 3,
          child: _TodoApp(
            header: 'Optimistic',
            noConnection: _noConnection,
            useOptimisticStateManagement: true,
          ),
        ),
      ],
    );
  }
}

class _TodoApp extends StatelessWidget {
  const _TodoApp({
    required this.header,
    required this.noConnection,
    required this.useOptimisticStateManagement,
  });

  final String header;
  final bool noConnection;
  final bool useOptimisticStateManagement;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '"$header"',
          style: FlutterDeckTheme.of(context)
              .textTheme
              .title
              .copyWith(fontStyle: FontStyle.italic),
        ),
        const SizedBox(height: 16),
        Expanded(
          child: DeviceFrame(
            device: Devices.ios.iPhone13,
            screen: OptimisticTodoApp(
              noConnection: noConnection,
              useOptimisticStateManagement: useOptimisticStateManagement,
            ),
          ),
        ),
      ],
    );
  }
}
