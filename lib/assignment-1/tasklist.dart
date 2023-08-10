import 'package:flutter_classwork_assignment/assignment-1/task.dart';
import 'package:flutter/material.dart';
import 'package:flutter_classwork_assignment/assignment-1/card.dart' as MyCard;



class TaskList extends StatelessWidget{
  final List<Task> task = [
    Task(title: 'Task 1',
        description: 'Tasks are defined actions or assignments aimed at achieving specific goals or completing projects efficiently and effectively.',
        date: '12/23/23'),
    Task(title: 'Task 2',
        description: 'In the fast-paced world of technology, staying updated with the latest trends and developments is vital to remain competitive and innovative.',
        date: '12/23/23'),
    Task(title: 'Task 3',
        description: 'Life is a journey of self-discovery and growth, where every experience shapes us into the person we are meant to become.',
        date: '12/23/23'),
    Task(title: 'Task 4',
        description: 'Tasks are defined actions or assignments aimed at achieving specific goals or completing projects efficiently and effectively.',
        date: '12/23/23'),
    Task(title: 'Task 5',
        description: 'In the fast-paced world of technology, staying updated with the latest trends and developments is vital to remain competitive and innovative.',
        date: '12/23/23'),
    Task(title: 'Task 6',
        description: 'Life is a journey of self-discovery and growth, where every experience shapes us into the person we are meant to become.',
        date: '12/23/23'),
    Task(title: 'Task 7',
        description: 'Tasks are defined actions or assignments aimed at achieving specific goals or completing projects efficiently and effectively.',
        date: '12/23/23'),
    Task(title: 'Task 8',
        description: 'In the fast-paced world of technology, staying updated with the latest trends and developments is vital to remain competitive and innovative.',
        date: '12/23/23'),
    Task(title: 'Task 9',
        description: 'Life is a journey of self-discovery and growth, where every experience shapes us into the person we are meant to become.',
        date: '12/23/23'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Task Board"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: task.length,
        itemBuilder: (context,index){
          return MyCard.Card(task: task[index],);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
        backgroundColor: Colors.black,
      ),
    );

  }
}
