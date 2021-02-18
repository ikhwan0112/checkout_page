import 'package:flutter/material.dart';

class CheckoutSummary extends StatelessWidget {
  CheckoutSummary(
      {this.title,
      this.titleColor,
      this.titleFontSize,
      this.value,
      this.valueColor,
      this.valueFontSize,
      this.bold});

  final String title, value;
  final Color titleColor, valueColor;
  final double titleFontSize, valueFontSize;
  final bool bold;

  @override
  Widget build(BuildContext context) {
    if (bold != true) {
      return Row(
        children: [
          Text(
            title,
            style: TextStyle(
              color: titleColor,
              fontSize: titleFontSize,
            ),
          ),
          Spacer(),
          Text(
            value,
            style: TextStyle(
              color: valueColor,
              fontSize: valueFontSize,
            ),
          ),
        ],
      );
    } else {
      return Row(
        children: [
          Text(
            title,
            style: TextStyle(
              color: titleColor,
              fontSize: titleFontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          Text(
            value,
            style: TextStyle(
              color: valueColor,
              fontSize: valueFontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      );
    }
  }
}
