import 'package:flutter/material.dart';

const kToggleColor = Colors.blueGrey;

const kToggleTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 16.0,
);

const kTitleTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 20.0,
);

const kBoxDecoration = BoxDecoration(
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(10.0),
    topRight: Radius.circular(10.0),
  ),
  image: DecorationImage(
    image: AssetImage(
      'images/seoul.jpg',
    ),
    fit: BoxFit.fill,
  ),
);
