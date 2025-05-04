import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app_bloc/domain/todo_uc.dart';
import 'package:todo_app_bloc/presentation/blocs/todo_state.dart';

part 'todo_events.dart';

class TodoBloc extends Bloc<TodoEvents, List<TodoState>> {
  final TodoUseCase _todoUseCase;

  TodoBloc(this._todoUseCase) : super([]) {
    on<CreateTodo>((event, emit) {
      emit(_todoUseCase.createTodo(state, event.todoTitle));
    });
  }

  @override
  void onChange(Change<List<TodoState>> change) {
    debugPrint("Add todo event called : $change");
    super.onChange(change);
  }
}
