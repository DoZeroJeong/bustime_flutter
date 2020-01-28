import 'package:flutter/material.dart';
import 'package:bustime_flutter/utilities/constants.dart';

class TimeTableTitle extends StatelessWidget {
  TimeTableTitle({
    this.rowText,
    this.time,
    this.totalTime,
    this.wayPoint,
  });

  final Function rowText;
  final String time;
  final String totalTime;
  final int wayPoint;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          time,
          style: kTitleTextStyle,
        ),
        Text(
          totalTime,
          style: kTitleTextStyle,
        ),
        Text(
          '경유지: $wayPoint곳',
          style: kTitleTextStyle,
        ),
      ],
    );
  }
}
