import 'package:flutter/material.dart';

class TasksTiles extends StatelessWidget {
  final bool checkBoxState;
  final String taskName;
  final Function(bool?)? toggleCheckBoxState;
  final VoidCallback toggleLongPress;
  TasksTiles(
      {required this.checkBoxState,
      this.toggleCheckBoxState,
      required this.toggleLongPress,
      required this.taskName});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: toggleLongPress,
      title: Text(
        taskName,
        style: TextStyle(
          decoration: checkBoxState ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: checkBoxState,
        onChanged: toggleCheckBoxState,
      ),
    );
  }
}
