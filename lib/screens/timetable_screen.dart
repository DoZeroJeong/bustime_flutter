import 'package:bustime_flutter/models/timetable_model.dart';
import 'package:bustime_flutter/services/timetable_services.dart';
import 'package:bustime_flutter/widgets/timetable_pricetag.dart';
import 'package:flutter/material.dart';
import 'package:bustime_flutter/utilities/constants.dart';

class TimeTableScreen extends StatelessWidget {
  final int numberCity;

  TimeTableScreen({this.numberCity});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<TimeTable>(
          future: getTimeTable(numberCity),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done)
              return SafeArea(
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 50.0),
                      child: Stack(
                        children: <Widget>[
                          Center(
                            child: TimeTablePriceTag(
                              cityName: snapshot.data.city,
                              adultFee: snapshot.data.adultFee,
                              teenagerFee: snapshot.data.teenagerFee,
                              childFee: snapshot.data.childFee,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.15,
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: snapshot.data.timetable.length,
                        itemBuilder: (context, index) {
                          return Card(
                            child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Text(
                                    '출발: ${snapshot.data.timetable[index].busTime}',
                                    style: kTitleTextStyle,
                                  ),
                                  Text(
                                    '소요: ${snapshot.data.timetable[index].time}',
                                    style: kTitleTextStyle,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              );
            else
              return Center(
                child: CircularProgressIndicator(),
              );
          }),
    );
  }
}
