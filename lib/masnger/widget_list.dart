import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/provider/provider_tasks.dart';

import '../models/task.dart';

class ListName extends StatelessWidget {
  const ListName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<NotesModel>(
      builder: (context,newNotes, child){
        return  Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              /* CircleAvatar(
                radius: 25,
                child: Text(
                  '${Provider.of<ListData>(context).data.length}',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),*/
              SizedBox(
                width: 20,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${newNotes.name}',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
