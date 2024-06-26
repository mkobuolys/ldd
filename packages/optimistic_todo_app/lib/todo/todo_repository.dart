import 'models/models.dart';

const _delay = Duration(milliseconds: 700);

class TodoRepository {
  TodoRepository({
    required this.throwException,
  });

  final bool throwException;
  final _todos = <int, TodoItem>{};

  void init(List<TodoItem> items) {
    for (final item in items) {
      _todos[item.id] = item;
    }
  }

  Future<List<TodoItem>> save(TodoItem item) async {
    await Future.delayed(_delay);

    if (throwException) {
      throw TodoRepositoryException('Failed to save item');
    }

    _todos[item.id] = item;

    return _todos.values.toList();
  }

  Future<List<TodoItem>> remove(TodoItem item) async {
    await Future.delayed(_delay);

    if (throwException) {
      throw TodoRepositoryException('Failed to remove item');
    }

    _todos.remove(item.id);

    return _todos.values.toList();
  }
}

class TodoRepositoryException implements Exception {
  TodoRepositoryException(this.message);

  final String message;

  @override
  String toString() => message;
}
