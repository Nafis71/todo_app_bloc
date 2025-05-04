import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app_bloc/common/routes/routes.dart';

import '../blocs/todo_bloc.dart';
import '../blocs/todo_state.dart';

class Todo extends StatefulWidget {
  const Todo({super.key});

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Simple todo"), surfaceTintColor: Colors.white, backgroundColor: Colors.white),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, Routes.addTodo);
        },
        backgroundColor: Colors.lightGreen,
        child: Icon(Icons.add, color: Colors.white),
      ),
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<TodoBloc, List<TodoState>>(
              builder: (context, todoState) {
                return ListView.separated(
                  padding: EdgeInsets.all(16),
                  itemBuilder: (context, index) {
                    return Text(todoState[index].title ?? "", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400));
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 10);
                  },
                  itemCount: todoState.length,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
