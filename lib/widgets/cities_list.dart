import 'package:bustime_flutter/models/city_data.dart';
import 'package:bustime_flutter/screens/timetable_screen.dart';
import 'package:bustime_flutter/widgets/city_title.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CitiesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CityData>(
      builder: (context, cityData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final city = cityData.cities[index];
            return CityTitle(
              cityName: city.cityName,
              tapCallback: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TimeTableScreen(
                            numberCity: index + 1,
                          )),
                );
              },
            );
          },
          itemCount: cityData.cityCount,
        );
      },
    );
  }
}
