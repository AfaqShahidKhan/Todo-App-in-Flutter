import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:to_dolist/Models/taskModel.dart';

class TaskData extends ChangeNotifier {
  List<Task> _task = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Sugar'),
    Task(name: 'Buy Coffee'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_task);
  }

  int get taskCount {
    return _task.length;
  }

  void addTask(String newTaskTitle) {
    final tasks = Task(name: newTaskTitle);
    _task.add(tasks);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _task.remove(task);
  }
}
