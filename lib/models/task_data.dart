import 'dart:collection';

import 'package:flutter/foundation.dart';

import 'task.dart';

class TasksData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(
        taskName:
            'Add new task from plus button or delete task by long press it')
  ];
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskListCount {
    return _tasks.length;
  }

  void addNewTask(String taskName) {
    _tasks.add(Task(taskName: taskName));
    notifyListeners();
  }

  void checkTask(int index, bool done) {
    _tasks[index].isDone = done;
    notifyListeners();
  }

  void deleteTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}
