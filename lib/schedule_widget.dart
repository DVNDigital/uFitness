import 'package:flutter/material.dart';
import 'package:ufitness/calendar_widget/calendar_day_widget.dart';

class ScheduleWidget extends StatelessWidget {
  final Color color;

  ScheduleWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20.0),
      crossAxisSpacing: 10.0,
      crossAxisCount: 7,
      children: <Widget>[
        const Text('He\'d have you all unravel at the'),
        const Text('Heed not the rabble'),
        const Text('Sound of screams but the'),
        const Text('Who scream'),
        const Text('Revolution is coming...'),
        const Text('Revolution, they...'),
        CalendarDayWidget(Colors.red),
      ],
    );
  }

}