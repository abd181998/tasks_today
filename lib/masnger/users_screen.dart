import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasks_today/masnger/widget_list.dart';

import '../models/provider/provider_tasks.dart';
import '../widgets/add_tasks.dart';

class UserModel {
  final int idi;
  final String name;
  UserModel({
    required this.idi,
    required this.name,
  });
}

class UsersScreen extends StatelessWidget {

  static const id = 'Users Screen';

  // const UsersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Users'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) => SingleChildScrollView(
                    child: Container(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom),
                        child: AddTasks())));
          },
          backgroundColor: Colors.indigo[900],
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        body: ListView.separated(
            physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) => ListName(),
            separatorBuilder: (context, index) => Padding(
                  padding: const EdgeInsetsDirectional.only(start: 20),
                  child: Container(
                    width: double.infinity,
                    height: 1,
                    color: Colors.grey[300],
                  ),
                ),
            itemCount: Provider.of<UserModel>(context).name.length));
  }
}
