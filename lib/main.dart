import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app_bloc/domain/todo_uc.dart';
import 'package:todo_app_bloc/presentation/blocs/todo_bloc.dart';
import 'package:todo_app_bloc/presentation/views/my_app.dart';

main(){
  runApp(MultiBlocProvider(providers: [
    BlocProvider(create: (context)=> TodoBloc(TodoUseCase()))
  ], child: const MyApp()));
}