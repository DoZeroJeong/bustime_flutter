import 'package:bustime_flutter/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
        body: HomeScreen(),
      ),
    );
  }
}
