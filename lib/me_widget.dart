import 'package:flutter/material.dart';
import 'package:ufitness/workout_card_widget.dart';
import 'dart:async';

class MeWidget extends StatefulWidget {
  MeWidget({Key key}) : super(key: key);

  @override
  _MeWidgetState createState() => _MeWidgetState();
}

class _MeWidgetState extends State<MeWidget>{
  int _count = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
    )
      /*CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 150,
          floating: false,
          pinned: false,
          backgroundColor: Colors.white,
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Spacer(),
              FlexibleSpaceBar(
                title: Text("Devon Orr", style: TextStyle(color: Colors.green)),
                centerTitle: true,
              ),
              //Text("Devon Orr Meh", style: TextStyle(color: Colors.green)),
            ],
          ),
          forceElevated: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: ()=> print("More Pressed"),
            )
          ],
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate((context, index) => ListTile(
              title: Text("List item $index"),
            ))
        ),
      ],
    )*/;
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