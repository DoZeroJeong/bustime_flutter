import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:bustime_flutter/models/timetable_model.dart';

final String url = 'http://6c3f6afb.ngrok.io/timetable/inje';

Future<TimeTable> getTimeTable(int numberCity) async {
  final response = await http.get('$url/$numberCity');
  return timeTableFromJson(utf8.decode(response.bodyBytes));
}
