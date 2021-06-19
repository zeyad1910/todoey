import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

import 'screens/todoey_main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TasksData>(
      create: (context) => TasksData(),
      child: MaterialApp(
        theme: ThemeData(
          textButtonTheme: TextButtonThemeData(
            style:
                TextButton.styleFrom(backgroundColor: Colors.lightBlueAccent),
          ),
        ),
        home: TasksScreen(),
      ),
    );
  }
}
