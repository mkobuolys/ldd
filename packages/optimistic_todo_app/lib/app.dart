import 'package:flutter/material.dart';

import 'todo/todo_page.dart';

class OptimisticTodoApp extends StatelessWidget {
  const OptimisticTodoApp({
    required this.noConnection,
    required this.useOptimisticStateManagement,
    super.key,
  });

  final bool noConnection;
  final bool useOptimisticStateManagement;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: TodoPage(
        noConnection: noConnection,
        useOptimisticStateManagement: useOptimisticStateManagement,
      ),
    );
  }
}
