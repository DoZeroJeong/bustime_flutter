import 'package:bustime_flutter/utilities/constants.dart';
import 'package:flutter/material.dart';

class ToggleContainer extends StatelessWidget {
  ToggleContainer({this.busName, this.busIcon});

  final String busName;
  final IconData busIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Icon(
            busIcon,
            size: 40.0,
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            busName,
            style: kToggleTextStyle,
          )
        ],
      ),
    );
  }
}
