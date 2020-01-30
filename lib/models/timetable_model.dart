import 'dart:convert';

class TimeTable {
  final String city;
  final String adultFee;
  final String teenagerFee;
  final String childFee;
  final List<Time> timetable;

  TimeTable({
    this.city,
    this.adultFee,
    this.teenagerFee,
    this.childFee,
    this.timetable,
  });

  factory TimeTable.fromJson(Map<String, dynamic> json) {
    var list = json['time_table'] as List;
    List<Time> timeList = list.map((i) => Time.fromJson(i)).toList();

    return TimeTable(
      city: json['city'],
      adultFee: json['adult_fee'],
      teenagerFee: json['teenager_fee'],
      childFee: json['child_fee'],
      timetable: timeList,
    );
  }
}

class Time {
  final String busTime;
  final String time;

  Time({this.time, this.busTime});

  factory Time.fromJson(Map<String, dynamic> json) {
    return Time(
      busTime: json['bus_time'],
      time: json['time'],
    );
  }
}

TimeTable timeTableFromJson(String str) {
  final jsonData = json.decode(str);
  return TimeTable.fromJson(jsonData);
}
