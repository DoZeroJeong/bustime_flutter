import 'package:bustime_flutter/widgets/pricetag_name.dart';
import 'package:flutter/material.dart';

class TimeTablePriceTag extends StatelessWidget {
  final String cityName;
  final String adultFee;
  final String teenagerFee;
  final String childFee;

  TimeTablePriceTag(
      {this.cityName, this.adultFee, this.teenagerFee, this.childFee});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.75,
      height: MediaQuery.of(context).size.height * 0.17,
      child: Material(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        elevation: 6.0,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              cityName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  PriceName(
                    priceNameTitle: '일반',
                    priceNameSubTitle: adultFee,
                  ),
                  PriceName(
                    priceNameTitle: '중고생',
                    priceNameSubTitle: teenagerFee,
                  ),
                  PriceName(
                    priceNameTitle: '초등학생',
                    priceNameSubTitle: childFee,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
