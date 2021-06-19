import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

import 'tasks_tiles.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TasksData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TasksTiles(
              checkBoxState: taskData.tasks[index].isDone,
              toggleLongPress: () {
                taskData.deleteTask(index);
              },
              toggleCheckBoxState: (value) {
                taskData.checkTask(index, value!);
              },
              taskName: taskData.tasks[index].taskName,
            );
          },
          itemCount: taskData.taskListCount,
        );
      },
    );
  }
}
