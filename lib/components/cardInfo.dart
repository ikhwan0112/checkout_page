import 'package:flutter/material.dart';

class CardInfo extends StatelessWidget {
  CardInfo({this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
