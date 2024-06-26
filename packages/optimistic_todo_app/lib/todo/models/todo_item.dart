import 'package:equatable/equatable.dart';

import 'todo_item_status.dart';

class TodoItem extends Equatable {
  const TodoItem({
    required this.id,
    required this.title,
    this.status = TodoItemStatus.pending,
  });

  final int id;
  final TodoItemStatus status;
  final String title;

  TodoItem copyWith({
    int? id,
    TodoItemStatus? status,
    String? title,
  }) {
    return TodoItem(
      id: id ?? this.id,
      status: status ?? this.status,
      title: title ?? this.title,
    );
  }

  @override
  List<Object> get props => [id, status, title];
}
