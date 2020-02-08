import 'dart:collection';

import 'package:bustime_flutter/models/city.dart';
import 'package:bustime_flutter/models/intercity.dart';
import 'package:flutter/material.dart';

class CityData extends ChangeNotifier {
  List<City> _cities = [
    City(cityName: '동서울종합버스터미널'),
    City(cityName: '대전복합버스터미널'),
    City(cityName: '유성시외버스터미널'),
    City(cityName: '고양종합버스터미널'),
    City(cityName: '수원종합버스터미널'),
    City(cityName: '수원우만동'),
    City(cityName: '안산시외버스터미널'),
    City(cityName: '간성시외버스터미널'),
    City(cityName: '거진시외버스터미널'),
    City(cityName: '대진시외버스터미널'),
    City(cityName: '장산리,수동파출소입구'),
    City(cityName: '진부령'),
    City(cityName: '속초시외버스터미널'),
    City(cityName: '낙산'),
    City(cityName: '설악산입구'),
    City(cityName: '양양시외고속터미널'),
    City(cityName: '오색'),
    City(cityName: '한계령휴게소'),
    City(cityName: '원주시외버스터미널'),
    City(cityName: '남교리'),
    City(cityName: '백담사입구'),
    City(cityName: '신남버스터미널'),
    City(cityName: '원통시외버스터미널'),
    City(cityName: '두촌매표소'),
    City(cityName: '철정리'),
    City(cityName: '홍천시외버스터미널'),
    City(cityName: '공근면'),
    City(cityName: '횡성시외버스터미널'),
    City(cityName: '전주시외버스터미널'),
  ];
  List<InterCity> _interCities = [
    InterCity(cityName: '원통<->홍천'),
    InterCity(cityName: '원통<->인제'),
    InterCity(cityName: '원통<->진부령'),
    InterCity(cityName: '원통<->서화'),
    InterCity(cityName: '원통<->가아리'),
    InterCity(cityName: '원통<->월학리'),
    InterCity(cityName: '원통<->관대리'),
    InterCity(cityName: '원통<->민박촌'),
    InterCity(cityName: '인제<->현리(윗길)'),
    InterCity(cityName: '인제<->현리(아랫길)'),
    InterCity(cityName: '인제<->신남'),
    InterCity(cityName: '신남<->원통'),
    InterCity(cityName: '신남<->정자리'),
    InterCity(cityName: '신남<->관대리'),
    InterCity(cityName: '신남<->수산리'),
    InterCity(cityName: '현리->홍천방면'),
    InterCity(cityName: '현리<->서리'),
    InterCity(cityName: '현리<->포사.귀둔'),
    InterCity(cityName: '현리->진동.방동'),
  ];

  UnmodifiableListView<City> get cities => UnmodifiableListView(_cities);

  int get cityCount => _cities.length;

  UnmodifiableListView<InterCity> get interCities =>
      UnmodifiableListView(_interCities);

  int get intercityCount => _interCities.length;
}
