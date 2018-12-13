import 'package:flutter/material.dart';

class WorkoutCard extends StatelessWidget{
  final Color color;

  WorkoutCard(this.color);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
    );
  }
}