part of 'todo_cubit.dart';

final class TodoState extends Equatable {
  const TodoState({
    this.items = const [],
    this.error,
  });

  final List<TodoItem> items;
  final Exception? error;

  @override
  List<Object?> get props => [items, error];
}
