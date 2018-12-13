import 'package:flutter/material.dart';
import 'package:ufitness/workout_card_widget.dart';

class WorkoutsWidget extends StatelessWidget {
  final Color color;

  WorkoutsWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(

      child: ListView(
        children: <Widget>[
          WorkoutCard(Colors.amber),
          WorkoutCard(Colors.blue),
        ],
      ),
    );
  }

}