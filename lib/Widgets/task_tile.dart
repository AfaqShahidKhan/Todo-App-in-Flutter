import 'package:flutter/material.dart';
import 'package:to_dolist/Models/taskModel.dart';
import 'package:to_dolist/Models/task_data.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String? taskTitle;
  final Function(bool?) checkBoxCallBack;
  final VoidCallback? longPressCallBAck;

  TaskTile(
      {this.taskTitle,
      required this.isChecked,
      required this.checkBoxCallBack,
      this.longPressCallBAck});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBAck,
      title: Text(
        taskTitle!,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkBoxCallBack,

        //OR  (newValue) {
        // checkBoxCallBack(newValue);},
      ),
    );
  }
}
