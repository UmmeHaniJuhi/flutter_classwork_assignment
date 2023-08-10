import 'package:flutter_classwork_assignment/assignment-1/task.dart';
import 'package:flutter/material.dart';
class Card extends StatelessWidget {
  final Task task;

  const Card({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
        padding: EdgeInsets.all(18),
        decoration: BoxDecoration(
            color: Colors.black12.withOpacity(0.03)
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[

              Text(
                task.title,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: screenHeight * 0.025),
              Text(task.description),
              SizedBox(height: screenHeight * 0.025),
              Text(task.date),
            ]
        )
    );
  }
}

