import 'dart:collection';

import 'package:bustime_flutter/models/city.dart';
import 'package:flutter/material.dart';

class CityData extends ChangeNotifier {
  List<City> _interCities = [
    City(cityName: '원통↔홍천'),
    City(cityName: '원통↔인제'),
    City(cityName: '원통↔진부령'),
    City(cityName: '원통↔서화'),
    City(cityName: '원통↔가아리'),
    City(cityName: '원통↔월학리'),
    City(cityName: '원통↔관대리'),
    City(cityName: '원통↔민박촌'),
    City(cityName: '인제↔현리(윗길)'),
    City(cityName: '인제↔현리(아랫길)'),
    City(cityName: '인제↔신남'),
    City(cityName: '신남↔원통'),
    City(cityName: '신남↔정자리'),
    City(cityName: '신남↔관대리'),
    City(cityName: '신남↔수산리'),
    City(cityName: '현리→홍천방면'),
    City(cityName: '현리↔서리'),
    City(cityName: '현리↔포사.귀둔'),
    City(cityName: '현리→진동.방동'),
  ];

  UnmodifiableListView<City> get interCities => UnmodifiableListView(_interCities);

  int get intercityCount => _interCities.length;
}
