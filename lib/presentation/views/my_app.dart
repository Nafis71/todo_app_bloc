import 'package:flutter/material.dart';
import 'package:todo_app_bloc/common/routes/app_navigator.dart';
import 'package:todo_app_bloc/common/routes/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.todoScreen,
      onGenerateRoute: (routeSettings) {
        return AppNavigator.generateRoutes(routeSettings);
      },
    );
  }
}
