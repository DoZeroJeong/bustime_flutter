import 'package:bustime_flutter/widgets/timetables_title.dart';
import 'package:flutter/material.dart';

class TimeTableList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Card(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: TimeTableTitle(),
          ),
        );
      },
    );
  }
}
