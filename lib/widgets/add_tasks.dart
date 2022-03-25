import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/provider/provider_tasks.dart';


class AddTasks extends StatelessWidget {
  const AddTasks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? newTasksTitle ;
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Add Task ',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30,
            color: Colors.purple[900],
            fontWeight: FontWeight.bold
          ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newTasks){
              newTasksTitle =newTasks;
            },
          ),
          SizedBox(height: 30,),
          TextButton(onPressed: (){
            Provider.of<TaskData>(context,listen: false).addTasks(newTasksTitle!);
            Navigator.pop(context);
          }, child: Text('Add',
            style: TextStyle(
              color: Colors.white,

            ),

          ),
          style: TextButton.styleFrom(
            backgroundColor: Colors.purple[900]

          ),)
        ],
      ),
    );
  }
}
