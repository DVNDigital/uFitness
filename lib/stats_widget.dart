import 'package:flutter/material.dart';

class StatsWidget extends StatelessWidget {
  final Color color;

  StatsWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 150,
          floating: false,
          pinned: true,
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
        )
      ],
    );
  }

}