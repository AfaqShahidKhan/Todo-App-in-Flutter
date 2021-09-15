import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_dolist/Models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      padding: EdgeInsets.all(20.0),
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, color: Colors.lightBlueAccent),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newTask) {
                newTaskTitle = newTask;
              },
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
                color: Colors.lightBlueAccent,
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  // addTaskCallBack(newTaskTitle);
                  print("hellowwwwwwwwwwwwwwwwww");
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(newTaskTitle!);

                  Navigator.pop(context);
                }),
          ],
        ),
      ),
    );
  }
}
