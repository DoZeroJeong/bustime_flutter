import 'package:bustime_flutter/services/timetable.dart';
import 'package:bustime_flutter/utilities/constants.dart';
import 'package:flutter/material.dart';

class AddCityScreen extends StatefulWidget {
  AddCityScreen({this.timetable});

  final timetable;

  @override
  _AddCityScreenState createState() => _AddCityScreenState();
}

class _AddCityScreenState extends State<AddCityScreen> {
  TimeTableModel timetable = TimeTableModel();
  String cityName;

  void initState() {
    super.initState();

    updateUI(widget.timetable);
  }

  void updateUI(dynamic timetableData) {
    setState(() {
      if (timetableData == null) {
        return;
      }
      cityName = timetableData['result'][0]['city'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: <Widget>[
          Card(
            elevation: 4.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: InkWell(
              onTap: () {
                TimeTableModel().getBusTimeTable(1);
//                        Navigator.push(
//                          context,
//                          MaterialPageRoute(
//                              builder: (context) => TimeTableScreen()),
//                        );
//                        print('Seoul Card tapeed');
              },
              child: Stack(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        height: 100.0,
                        decoration: kBoxDecoration,
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          '$cityName',
                          style: kTitleTextStyle,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
