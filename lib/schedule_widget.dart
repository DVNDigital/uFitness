import 'package:flutter/material.dart';
import 'package:ufitness/calendar_widget/calendar_view_widget.dart';

class ScheduleWidget extends StatelessWidget {
  final Color color;

  ScheduleWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Calendar(
      onSelectedRangeChange: (range) =>
          print("Range is ${range.item1}, ${range.item2}"),
      isExpandable: true,
      showCalendarPickerIcon: false,
      showTodayAction: false,
    );
  }

}