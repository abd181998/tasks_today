
import 'package:flutter/material.dart';

import '../task.dart';
class TaskData extends ChangeNotifier{
  List<Task> tasks =[
  ];
  void addTasks(String newTasksTitle){
    tasks.add(Task(name: newTasksTitle));
    notifyListeners();
  }
  void updateTask(Task task){

    task.doneChange();
    notifyListeners();

  }

  void deleteTask(Task task){
    tasks.remove(task);
    notifyListeners();
  }
}
