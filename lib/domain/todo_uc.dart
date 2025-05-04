import 'package:todo_app_bloc/presentation/blocs/todo_state.dart';

class TodoUseCase {
  List<TodoState> createTodo(List<TodoState> todos, String title) {
    if (title.isEmpty) return todos;
    TodoState todoState = TodoState(title: title.trim(), createdAt: DateTime.now());
    return [
      ...todos,
      ...[todoState],
    ];
  }
}
