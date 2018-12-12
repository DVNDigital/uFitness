import 'package:flutter/material.dart';

class CalendarDayWidget extends StatelessWidget {
  final Color color;

  CalendarDayWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(

      color: color,
    );
  }

}

