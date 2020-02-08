import 'package:bustime_flutter/utilities/constants.dart';
import 'package:bustime_flutter/widgets/timetable_pricetag.dart';
import 'package:flutter/material.dart';

class InterCityTimeTableScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 50.0),
              child: Stack(
                children: <Widget>[
                  Center(
                    child: TimeTablePriceTag(
                      cityName: '원통<->홍천',
                      adultFee: '현금: 1000\n카드: 900',
                      teenagerFee: '현금: 500\n카드: 400',
                      childFee: '현금: 500\n카드: 400',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.14,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Card(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            '원통 출발',
                            style: kTitleTextStyle,
                          ),
                          Text(
                            '홍천 출발',
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
      ),
    );
  }
}
