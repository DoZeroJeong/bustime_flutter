import 'package:bustime_flutter/models/city_data.dart';
import 'package:bustime_flutter/screens/intercity_timetable_screen.dart';
import 'package:bustime_flutter/widgets/city_title.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InterCitiesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CityData>(
      builder: (context, cityData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final city = cityData.interCities[index];
            return CityTitle(
              cityName: city.cityName,
              tapCallback: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => InterCityTimeTableScreen()),
                );
              },
            );
          },
          itemCount: cityData.interCities.length,
        );
      },
    );
  }
}