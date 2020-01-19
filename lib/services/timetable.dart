import 'package:bustime_flutter/services/networking.dart';

const localURL = 'http://a46a7aa5.ngrok.io/timetable/inje';

class TimeTableModel {
  Future<dynamic> getBusTimeTable(int index) async {
    NetworkHelper networkHelper = NetworkHelper('$localURL/$index');

    var timetableData = await networkHelper.getData();
    return timetableData;
  }
}
