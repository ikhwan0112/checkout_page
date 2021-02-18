import 'package:checkout_page/components/cardInfo.dart';
import 'package:checkout_page/components/checkoutSummary.dart';
import 'package:flutter/material.dart';

class SummaryPayment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CardInfo(
      child: Container(
        width: size.width / 1,
        padding: EdgeInsets.fromLTRB(
          size.height / 50,
          size.height / 60,
          size.height / 50,
          size.height / 60,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CheckoutSummary(
              title: 'Subtotal (3 Items)',
              titleColor: Color(0xFF5A5A5A),
              titleFontSize: 16,
              value: 'RM75.00',
              valueColor: Color(0xFF828282),
              valueFontSize: 16,
            ),
            SizedBox(
              height: size.height / 50,
            ),
            CheckoutSummary(
              title: 'Shipping Fee',
              titleColor: Color(0xFF5A5A5A),
              titleFontSize: 16,
              value: 'RM4.66',
              valueColor: Color(0xFF828282),
              valueFontSize: 16,
            ),
            SizedBox(
              height: size.height / 50,
            ),
            CheckoutSummary(
              title: 'Shipping Fee',
              titleColor: Color(0xFF5A5A5A),
              titleFontSize: 16,
              value: '-RM4.66',
              valueColor: Color(0xFFA63838),
              valueFontSize: 16,
            ),
            SizedBox(
              height: size.height / 50,
            ),
            CheckoutSummary(
              title: 'Order Amount',
              titleColor: Color(0xFF928069),
              titleFontSize: 20,
              value: 'RM75.00',
              valueColor: Color(0xFF928069),
              valueFontSize: 20,
            ),
          ],
        ),
      ),
    );
  }
}
