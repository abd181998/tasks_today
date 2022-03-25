
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasks_today/widgets/tasksTitle.dart';

import '../models/provider/provider_tasks.dart';

class TasksList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return  ListView.builder(
          physics:BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return TasksTitle(
              isChecked: taskData.tasks[index].isDone,
              taskTitle: taskData.tasks[index].name,
              CheckboxChange: (bool?newValue){
                taskData.updateTask(taskData.tasks[index]);
              },
              listTileDelet:(){
                taskData.deleteTask(taskData.tasks[index]);
              } ,
            );
          },
          itemCount: taskData.tasks.length,
        );
      }


    );
  }
}
