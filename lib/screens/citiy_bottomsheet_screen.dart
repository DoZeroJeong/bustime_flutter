import 'package:bustime_flutter/widgets/cities_list.dart';
import 'package:flutter/material.dart';

class CityBottomSheetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.51,
      color: Color(0xFF757575),
      child: Container(
        child: CitiesList(),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
      ),
    );
  }
}
