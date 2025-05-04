import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app_bloc/presentation/blocs/todo_bloc.dart';

class AddTodo extends StatefulWidget {
  const AddTodo({super.key});

  @override
  State<AddTodo> createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  final TextEditingController _todoController = TextEditingController();
  late final TodoBloc _todoBloc;

  @override
  void initState() {
    _todoBloc = context.read<TodoBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Add todo"), surfaceTintColor: Colors.white, backgroundColor: Colors.white),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              TextFormField(
                controller: _todoController,
                decoration: InputDecoration(
                  hintText: "Add title",
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade300)),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade600)),
                ),
              ),
              SizedBox(height: 24),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: ElevatedButton(
                  onPressed: (){
                    _todoBloc.add(CreateTodo(todoTitle: _todoController.text));
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightGreen,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                  child: Text("Add to todo", style: TextStyle(color: Colors.white, fontSize: 15)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _todoController.dispose();
    super.dispose();
  }
}
