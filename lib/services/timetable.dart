import 'package:bustime_flutter/services/networking.dart';

const localURL = 'http://ea6d4f98.ngrok.io/timetable/inje';

class TimeTableModel {
  Future<dynamic> getBusTimeTable() async {
    NetworkHelper networkHelper = NetworkHelper('$localURL/');

    var timetableData = await networkHelper.getData();
    return timetableData;
  }
}
