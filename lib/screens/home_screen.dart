import 'package:bustime_flutter/screens/bottomsheet_screen.dart';
import 'package:bustime_flutter/utilities/constants.dart';
import 'package:bustime_flutter/widgets/dialog.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool selectedCity = false;
  bool selectedInterCity = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Center(
          child: Text(
            '인제 버스터미널',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Column(
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
                  selectedInterCity = false;
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => BottomSheetScreen(),
                  );
                } else if (index == 1) {
                  selectedCity = false;
                  selectedInterCity = true;
                  ShowDialog();
//                  showModalBottomSheet(
//                    context: context,
//                    builder: (context) => BottomSheetScreen(),
//                  );
                }
              });
            },
          ),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
