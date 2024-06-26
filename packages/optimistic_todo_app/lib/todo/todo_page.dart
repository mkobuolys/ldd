import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'cubit/todo_cubit.dart';
import 'models/models.dart';
import 'todo_repository.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({
    required this.noConnection,
    required this.useOptimisticStateManagement,
    super.key,
  });

  final bool noConnection;
  final bool useOptimisticStateManagement;

  @override
  Widget build(BuildContext context) {
    final repository = TodoRepository(throwException: noConnection);
    final cubit = useOptimisticStateManagement
        ? OptimisticTodoCubit(repository: repository)
        : BasicTodoCubit(repository: repository);

    return BlocProvider.value(
      value: cubit..init(),
      child: _TodoView(noConnection: noConnection),
    );
  }
}

class _TodoView extends StatelessWidget {
  const _TodoView({
    required this.noConnection,
  });

  final bool noConnection;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Just another to-do app'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(noConnection ? Icons.wifi_off : Icons.wifi),
          )
        ],
      ),
      body: BlocConsumer<TodoCubit, TodoState>(
        listener: (context, state) {
          final error = state.error;

          if (error == null) return;

          final snackBar = SnackBar(
            content: Text(error.toString()),
          );

          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(snackBar);
        },
        builder: (context, state) {
          final items = state.items;

          if (items.isEmpty) {
            return const Center(
              child: Text('No items yet! Add one to get started.'),
            );
          }

          return ListView.builder(
            itemBuilder: (context, index) => _TodoCard(item: items[index]),
            itemCount: items.length,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: UniqueKey(),
        onPressed: context.read<TodoCubit>().add,
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _TodoCard extends StatelessWidget {
  const _TodoCard({
    required this.item,
  });

  final TodoItem item;

  @override
  Widget build(BuildContext context) {
    final completed = item.status == TodoItemStatus.completed;

    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 4.0, 0.0, 4.0),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const BehindMotion(),
          extentRatio: 0.25,
          children: [
            SlidableAction(
              icon: Icons.delete,
              label: 'Delete',
              onPressed: (context) => context.read<TodoCubit>().remove(item),
              backgroundColor: Colors.black,
              autoClose: true,
            ),
          ],
        ),
        child: Container(
          decoration: BoxDecoration(
            border: const Border.symmetric(
              horizontal: BorderSide(width: 2),
            ).add(const Border(left: BorderSide(width: 2))),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16.0),
              bottomLeft: Radius.circular(16.0),
            ),
          ),
          child: ListTile(
            onTap: !completed
                ? () => context.read<TodoCubit>().complete(item)
                : null,
            leading: completed
                ? const Icon(Icons.check)
                : const Icon(Icons.check_box_outline_blank),
            minVerticalPadding: 24.0,
            title: Text(
              item.title,
              style: TextStyle(
                decoration: completed ? TextDecoration.lineThrough : null,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
