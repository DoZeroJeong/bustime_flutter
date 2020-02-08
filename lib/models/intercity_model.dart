import 'dart:convert';

class InterCityTimeTable {
  final String city;
  final List<Time> intercityTable;

  InterCityTimeTable({
    this.city,
    this.intercityTable,
  });

  factory InterCityTimeTable.fromJson(Map<String, dynamic> json) {
    var list = json['intercity_table'] as List;
    List<Time> timeList = list.map((i) => Time.fromJson(i)).toList();

    return InterCityTimeTable(
      city: json['city'],
      intercityTable: timeList,
    );
  }
}

class Time {
  final String sCity;
  final String time;

  Time({this.time, this.sCity});

  factory Time.fromJson(Map<String, dynamic> json) {
    return Time(
      sCity: json['s_city'],
      time: json['time'],
    );
  }
}

InterCityTimeTable interCityTimeTableFromJson(String str) {
  final jsonData = json.decode(str);
  return InterCityTimeTable.fromJson(jsonData);
}
