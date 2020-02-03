import 'package:flutter/material.dart';

class PriceName extends StatelessWidget {
  const PriceName({
    this.priceNameTitle,
    this.priceNameSubTitle,
  });

  final String priceNameTitle;
  final String priceNameSubTitle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListTile(
        title: Text(
          priceNameTitle,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          priceNameSubTitle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
