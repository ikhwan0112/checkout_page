import 'package:flutter/material.dart';

class ProductColorSize extends StatelessWidget {
  ProductColorSize({this.size, this.title, this.data});

  final Size size;
  final String title, data;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title + ':',
          style: TextStyle(
            color: Color(0xFF828282),
          ),
        ),
        SizedBox(
          width: size.width / 40,
        ),
        Text(
          data,
          style: TextStyle(
            color: Color(0xFF828282),
          ),
        ),
      ],
    );
  }
}