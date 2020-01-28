import 'package:flutter/material.dart';

class CityTitle extends StatelessWidget {
  final String cityName;
  final Function tapCallback;

  CityTitle({
    this.cityName,
    this.tapCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.subway),
      title: Text(
        cityName,
      ),
      onTap: tapCallback,
    );
  }
}
