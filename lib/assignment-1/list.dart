import 'package:flutter/material.dart';
import 'package:flutter_classwork_assignment/assignment-1/tasklist.dart';


class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return MaterialApp(
      home: Scaffold(
        body: TaskList(),
      ),
    );
  }
}
