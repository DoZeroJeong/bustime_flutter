import 'package:bustime_flutter/screens/add_city_screen.dart';
import 'package:bustime_flutter/screens/timetable_screen.dart';
import 'package:bustime_flutter/services/timetable.dart';
import 'package:bustime_flutter/utilities/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool selectedCity = true;
  bool selectedInterCity = false;

  void initState() {
    super.initState();

    getTimeTableData();
  }

  void getTimeTableData() async {
    var timetableData = await TimeTableModel().getBusTimeTable(1);

    return timetableData;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ToggleButtons(
              fillColor: kToggleColor,
              hoverColor: kToggleColor,
              renderBorder: true,
              selectedColor: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.directions_bus,
                        size: 40.0,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        '인제 시외버스',
                        style: kToggleTextStyle,
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.directions_bus,
                        size: 40.0,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        '인제 시내버스',
                        style: kToggleTextStyle,
                      )
                    ],
                  ),
                ),
              ],
              isSelected: [
                selectedCity,
                selectedInterCity,
              ],
              onPressed: (index) {
                setState(() {
                  if (index == 0) {
                    selectedCity = true;

                    AddCityScreen(timetable: getTimeTableData);
                  }
                  index == 0 ? selectedCity = true : selectedCity = false;
                  index == 1
                      ? selectedInterCity = true
                      : selectedInterCity = false;
                });
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            selectedCity ? AddCityScreen() : Container(),
          ],
        ),
      ),
    );
  }
}
