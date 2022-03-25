import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import '../models/provider/provider_tasks.dart';
import '../models/task.dart';
import '../widgets/add_tasks.dart';
import '../widgets/tasks_list.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) =>
                  SingleChildScrollView(child: Container(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom
                    ),


                      child: AddTasks())));
        },
        backgroundColor: Colors.purple[900],
        child: Icon(Icons.add,color: Colors.white,),
      ),

      appBar: AppBar(
        backgroundColor: Colors.purple[900],
       automaticallyImplyLeading: false,
        title: Text(
          'Tasks Today',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.playlist_add_check,
                  size: 40,
                  color: Colors.purple[900],
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '${Provider.of<TaskData>(context).tasks.length} Tasks',
                  style: TextStyle(fontSize: 18, color: Colors.black,
                  fontWeight: FontWeight.bold
                  ),
                ),

              ],
            ),

            SizedBox(
              height: 10,
            ),
           Expanded(
             child: Container(
               width: double.infinity,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.all(Radius.circular(20)),
                 color: Colors.white,
               ),
               child:TasksList(),
             ),
           ),


          ],
        ),
      ),
    );
  }
}

// Container(
//padding: EdgeInsets.only(top: 60, left: 20, bottom: 80, right: 20),
//child: Column(
//crossAxisAlignment: CrossAxisAlignment.start,
//children: [
//Row(
//children: [
//Icon(
//Icons.playlist_add_check,
//size: 40,
//color: Colors.white,
//),
//SizedBox(
//width: 20,
//),

//],
//),
//Text(
//'${Provider.of<TaskData>(context).tasks.length} Tasks',
//style: TextStyle(fontSize: 18, color: Colors.white),
//),
//SizedBox(
//height: 20,
//),

//Container(
//height: 100,
//decoration: BoxDecoration(
//borderRadius: BorderRadius.all(Radius.circular(20)),
//color: Colors.white,
//),
//child:TasksList(),
//),


//],
//),
//)
