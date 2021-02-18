import 'package:flutter/material.dart';

class CheckoutSummary extends StatelessWidget {
  CheckoutSummary({
    this.title,
    this.titleColor,
    this.titleFontSize,
    this.value,
    this.valueColor,
    this.valueFontSize,
  });

  final String title, value;
  final Color titleColor, valueColor;
  final double titleFontSize, valueFontSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            // color: Color(0xFF5A5A5A),
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
  }
}