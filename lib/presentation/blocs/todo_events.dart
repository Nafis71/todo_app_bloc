part of 'todo_bloc.dart';

sealed class TodoEvents extends Equatable {}

final class CreateTodo extends TodoEvents {
  final String todoTitle;

  CreateTodo({required this.todoTitle});

  @override
  List<Object?> get props => [todoTitle];
}

final class DeleteTodo extends TodoEvents {
  final int index;

  DeleteTodo({required this.index});

  @override
  List<Object?> get props => [index];
}

final class EditTodo extends TodoEvents {
  final int index;
  final String title;

  EditTodo({required this.index, required this.title});

  @override
  List<Object?> get props => [index, title];
}
