import 'package:flutter/material.dart';

class WorkoutCard extends StatelessWidget{
  //final String leading; //This is for the image
  final String title;
  final String subtitle;
  final String trailing;

  WorkoutCard(this.title, this.subtitle, this.trailing);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.assignment_ind),
            title: Text(title),
            subtitle: Text(subtitle),
            trailing: Text(trailing),
            onTap: ()=> print("Card Pressed"),
          )
        ],
      ),
    );
  }
}