import 'package:bustime_flutter/screens/citiy_bottomsheet_screen.dart';
import 'package:bustime_flutter/screens/intercity_bottomsheet_screen.dart';
import 'package:bustime_flutter/utilities/constants.dart';
import 'package:bustime_flutter/widgets/bus_terminal.dart';
import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool selectedCity = false;
  bool selectedInterCity = false;

  @override
  Widget build(BuildContext context) {
    String appId = 'ca-app-pub-2758467454562548~6392284239';
    FirebaseAdMob.instance.initialize(appId: appId);

    MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
      keywords: <String>['game', 'lol'],
      contentUrl: 'https://flutter.io',
      childDirected: false,
      testDevices: <String>[], // Android emulators are considered test devices
    );

    BannerAd myBanner = BannerAd(
      adUnitId: BannerAd.testAdUnitId,
      size: AdSize.smartBanner,
      targetingInfo: targetingInfo,
      listener: (MobileAdEvent event) {
        print("BannerAd event is $event");
      },
    );

    myBanner
      ..load()
      ..show(
        anchorOffset: MediaQuery.of(context).size.height * 0.3,
        horizontalCenterOffset: 0.0,
        anchorType: AnchorType.top,
      );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Center(
          child: Text(
            '인제 버스터미널',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ToggleButtons(
            fillColor: kToggleColor,
            hoverColor: kToggleColor,
            renderBorder: true,
            selectedColor: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            children: <Widget>[
              ToggleContainer(
                busName: '인제 시내버스',
                busIcon: Icons.directions_bus,
              ),
              ToggleContainer(
                busName: '인제 시외버스',
                busIcon: Icons.directions_bus,
              ),
            ],
            isSelected: [
              selectedCity,
              selectedInterCity,
            ],
            onPressed: (index) {
              setState(() {
                if (index == 0) {
                  selectedCity = true;
                  selectedInterCity = false;
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => CityBottomSheetScreen(),
                  );
                } else if (index == 1) {
                  selectedCity = false;
                  selectedInterCity = true;
//                  _showDialog();
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => InterCityBottomSheetScreen(),
                  );
                }
              });
            },
          ),
        ],
      ),
    );
  }
}
