import 'package:bustime_flutter/models/city_data.dart';
import 'package:bustime_flutter/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CityData(),
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
