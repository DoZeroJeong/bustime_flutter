import 'dart:collection';

import 'package:bustime_flutter/models/inje_city.dart';
import 'package:flutter/material.dart';

class CityData extends ChangeNotifier {
  List<InJeCity> _cities = [
    InJeCity(cityName: '동서울종합버스터미널'),
    InJeCity(cityName: '대전복합버스터미널'),
    InJeCity(cityName: '유성시외버스터미널'),
    InJeCity(cityName: '고양종합버스터미널'),
    InJeCity(cityName: '수원종합버스터미널'),
    InJeCity(cityName: '수원우만동'),
    InJeCity(cityName: '안산시외버스터미널'),
    InJeCity(cityName: '간성시외버스터미널'),
    InJeCity(cityName: '거진시외버스터미널'),
    InJeCity(cityName: '대진시외버스터미널'),
    InJeCity(cityName: '장산리,수동파출소입구'),
    InJeCity(cityName: '진부령'),
    InJeCity(cityName: '속초시외버스터미널'),
    InJeCity(cityName: '낙산'),
    InJeCity(cityName: '설악산입구'),
    InJeCity(cityName: '양양시외고속터미널'),
    InJeCity(cityName: '오색'),
    InJeCity(cityName: '한계령휴게소'),
    InJeCity(cityName: '원주시외버스터미널'),
    InJeCity(cityName: '남교리'),
    InJeCity(cityName: '백담사입구'),
    InJeCity(cityName: '신남버스터미널'),
    InJeCity(cityName: '원통시외버스터미널'),
    InJeCity(cityName: '두촌매표소'),
    InJeCity(cityName: '철정리'),
    InJeCity(cityName: '홍천시외버스터미널'),
    InJeCity(cityName: '공근면'),
    InJeCity(cityName: '횡성시외버스터미널'),
    InJeCity(cityName: '전주시외버스터미널'),
  ];

  UnmodifiableListView<InJeCity> get cities => UnmodifiableListView(_cities);

  int get cityCount => _cities.length;
}
