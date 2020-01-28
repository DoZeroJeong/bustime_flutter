import 'package:bustime_flutter/widgets/cities_list.dart';
import 'package:flutter/material.dart';

class BottomSheetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF737373),
      child: Container(
        child: CitiesList(),
        decoration: BoxDecoration(
            color: Theme.of(context).canvasColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10.0),
              topLeft: Radius.circular(10.0),
            )),
      ),
    );
  }
}