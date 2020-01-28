import 'dart:collection';

import 'package:bustime_flutter/models/city.dart';
import 'package:flutter/material.dart';

class CityData extends ChangeNotifier {
  List<City> _cities = [
    City(cityName: '동서울종합버스터미널'),
    City(cityName: '대전복합버스터미널'),
    City(cityName: '유성시외버스터미널'),
  ];

  UnmodifiableListView<City> get cities => UnmodifiableListView(_cities);

  int get cityCount => _cities.length;

  void addCity(String newCityName) {
    final city = City(cityName: newCityName);
    _cities.add(city);
    notifyListeners();
  }
}
