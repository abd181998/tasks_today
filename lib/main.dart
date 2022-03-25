import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasks_today/screens/on_boarding/on_boarding_screen.dart';

import 'models/provider/provider_tasks.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: OnBoardingScreen(),
      ),
    );
  }
}

