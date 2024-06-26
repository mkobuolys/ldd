import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/models.dart';
import '../todo_repository.dart';

part 'todo_state.dart';

const _todos = [
  'Show cat memes',
  'Stutter during the presentation',
  'Talk about state management',
  'Fail miserably',
  'Go home and rethink life',
];

abstract class TodoCubit extends Cubit<TodoState> {
  TodoCubit({
    required this.repository,
  }) : super(const TodoState());

  final TodoRepository repository;

  void init() {
    final items = [
      for (final (id, title) in _todos.sublist(0, 3).indexed)
        TodoItem(id: id, title: title),
    ];

    repository.init(items);

    emit(TodoState(items: items));
  }

  Future<void> add();
  Future<void> complete(TodoItem item);
  Future<void> remove(TodoItem item);
}

final class OptimisticTodoCubit extends TodoCubit {
  OptimisticTodoCubit({
    required super.repository,
  });

  @override
  Future<void> add() async {
    final previousItems = state.items;
    final items = [...state.items];
    final id = items.isNotEmpty ? items.last.id + 1 : 0;

    if (id >= _todos.length) return;

    final item = TodoItem(id: id, title: _todos[id]);

    emit(TodoState(items: items..add(item)));

    try {
      await repository.save(item);
    } on TodoRepositoryException catch (e) {
      emit(TodoState(items: previousItems, error: e));
    }
  }

  @override
  Future<void> complete(TodoItem item) async {
    final previousItems = state.items;
    final items = [...state.items];
    final index = items.indexWhere((x) => x.id == item.id);
    final updatedItem = item.copyWith(status: TodoItemStatus.completed);

    emit(TodoState(items: items..[index] = updatedItem));

    try {
      await repository.save(updatedItem);
    } on TodoRepositoryException catch (e) {
      emit(TodoState(items: previousItems, error: e));
    }
  }

  @override
  Future<void> remove(TodoItem item) async {
    final previousItems = state.items;
    final items = [...state.items];
    items.removeWhere((x) => x.id == item.id);

    emit(TodoState(items: items));

    try {
      await repository.remove(item);
    } on TodoRepositoryException catch (e) {
      emit(TodoState(items: previousItems, error: e));
    }
  }
}

final class BasicTodoCubit extends TodoCubit {
  BasicTodoCubit({
    required super.repository,
  });

  @override
  Future<void> add() async {
    final id = state.items.isNotEmpty ? state.items.last.id + 1 : 0;

    if (id >= _todos.length) return;

    try {
      final items = await repository.save(TodoItem(id: id, title: _todos[id]));

      emit(TodoState(items: items));
    } on TodoRepositoryException catch (e) {
      emit(TodoState(items: state.items, error: e));
    }
  }

  @override
  Future<void> complete(TodoItem item) async {
    try {
      final items = await repository.save(
        item.copyWith(status: TodoItemStatus.completed),
      );

      emit(TodoState(items: items));
    } on TodoRepositoryException catch (e) {
      emit(TodoState(items: state.items, error: e));
    }
  }

  @override
  Future<void> remove(TodoItem item) async {
    try {
      final items = await repository.remove(item);

      emit(TodoState(items: items));
    } on TodoRepositoryException catch (e) {
      emit(TodoState(items: state.items, error: e));
    }
  }
}
