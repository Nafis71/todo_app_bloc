import 'package:flutter/material.dart';
import 'package:todo_app_bloc/common/routes/routes.dart';

import '../../presentation/views/add_todo_v.dart';
import '../../presentation/views/todo_v.dart';

class AppNavigator {
  static PageRoute? generateRoutes(RouteSettings routeSettings) {
    Map<String, WidgetBuilder> routes = {Routes.todoScreen: (context) => Todo(), Routes.addTodo: (context) => AddTodo()};

    WidgetBuilder? builder = routes[routeSettings.name];
    return (builder != null) ? MaterialPageRoute(builder: builder) : null;
  }
}
