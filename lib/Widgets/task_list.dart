import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:to_dolist/Models/task_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              // taskTitle: Provider.of<TaskData>(context).task[index].name,
              // isChecked: Provider.of<TaskData>(context).task[index].isDone,

              taskTitle: task.name,
              isChecked: task.isDone,
              checkBoxCallBack: (bool? checkBoxState) {
                if (checkBoxState != null) {
                  taskData.updateTask(task);
                  // setState(() {
                  //   widget.task[index].toggleDone();
                  // });
                }
              },
              longPressCallBAck: () {
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: Provider.of<TaskData>(context).taskCount,
        );
      },
    );
  }
}
