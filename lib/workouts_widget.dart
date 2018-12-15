import 'package:flutter/material.dart';
import 'package:ufitness/workout_card_widget.dart';
import 'dart:async';

class WorkoutsWidget extends StatefulWidget {
  WorkoutsWidget({Key key}) : super(key: key);

  @override
  _WorkoutsWidgetState createState() => _WorkoutsWidgetState();
}

class _WorkoutsWidgetState extends State<WorkoutsWidget>{
  int _count = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RefreshIndicator(
        onRefresh: _handleRefresh,
        child: ListView(
          padding: EdgeInsets.fromLTRB(5,15,5,15),
          children: _getItems(),
        ),
      ),
    );
  }

  List<Widget> _getItems(){
    var items = <Widget>[];
    for(int i=0; i<_count; i++){
      items.add(WorkoutCard("Deadlifts","50, 60, 70, 80","256lbs"));
    }
    return items;
  }

  Future<Null> _handleRefresh() async{
    setState(() {
      _count += 1;
    });
    return null;
  }
}