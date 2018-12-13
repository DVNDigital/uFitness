import 'package:flutter/material.dart';

class WorkoutCard extends StatelessWidget{
  final Color color;

  WorkoutCard(this.color);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.assignment_ind),
            title: Text("Squats"),
            subtitle: Text("50, 70, 90, 120"),
            trailing: Text("Meh"),
            onTap: ()=> print("Card Pressed"),
          )
        ],
      ),
      color: color,
    );
  }
}