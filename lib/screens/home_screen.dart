import 'package:bustime_flutter/screens/bottomsheet_screen.dart';
import 'package:bustime_flutter/utilities/constants.dart';
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

    void _showDialog() {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('서비스 준비중 입니다.'),
              actions: <Widget>[
                FlatButton(
                  child: Text('확인'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          });
    }

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
              Container(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.directions_bus,
                      size: 40.0,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      '인제 시외버스',
                      style: kToggleTextStyle,
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.directions_bus,
                      size: 40.0,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      '인제 시내버스',
                      style: kToggleTextStyle,
                    )
                  ],
                ),
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
                    builder: (context) => BottomSheetScreen(),
                  );
                } else if (index == 1) {
                  selectedCity = false;
                  selectedInterCity = true;
                  _showDialog();
//                  showModalBottomSheet(
//                    context: context,
//                    builder: (context) => BottomSheetScreen(),
//                  );
                }
              });
            },
          ),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
