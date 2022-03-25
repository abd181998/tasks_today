import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/provider/provider_tasks.dart';
import '../models/task.dart';

class TasksTitle extends StatelessWidget {
  @override
  final bool isChecked;
  final String taskTitle;
  final void Function(bool?) CheckboxChange;
  final void Function() listTileDelet;
  TasksTitle(
      {required this.isChecked,
      required this.taskTitle,
      required this.CheckboxChange,
      required this.listTileDelet,

      });
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.purple[900],
        value: isChecked,
        onChanged: CheckboxChange,
      ),
      leading:  CircleAvatar(
        backgroundColor: Colors.purple[900],
        radius: 25,
        child: Center(
          child: Text(
           '${Provider.of<TaskData>(context).tasks.length} ',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          ),
        ),
      ),

    );
  }
}
