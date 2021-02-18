import 'package:checkout_page/components/cardInfo.dart';
import 'package:checkout_page/components/productColorSize.dart';
import 'package:flutter/material.dart';

class ProductInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CardInfo(
      child: Container(
        padding: EdgeInsets.fromLTRB(
          size.width / 30,
          0,
          size.width / 30,
          size.width / 30,
        ),
        child: Column(
          children: [
            // Product Info (Start)
            Row(
              children: [
                // Image (Start)
                Container(
                  padding: EdgeInsets.only(
                    right: size.width / 30,
                  ),
                  child: Image(
                    height: size.height / 5,
                    width: size.height / 5,
                    image: AssetImage('assets/images/material.jpg'),
                  ),
                ),
                // Image (End)
                // Product Attribute (Start)
                Container(
                  child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Vintage Enamel Mug',
                          style: TextStyle(
                            color: Color(0xFF5A5A5A),
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: size.height / 60,
                        ),
                        ProductColorSize(
                          size: size,
                          title: 'Color',
                          data: 'Pastel Pink',
                        ),
                        SizedBox(
                          height: size.height / 80,
                        ),
                        ProductColorSize(
                          size: size,
                          title: 'Size',
                          data: 'S',
                        ),
                        SizedBox(
                          height: size.height / 80,
                        ),
                        Row(
                          children: [
                            Text(
                              'RM25.00',
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                            Spacer(),
                            Text('Qty: 3'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // Product Attribute (End)
              ],
            ),
            // Product Info (End)
            Divider(
              color: Color(0xFFE4E4E6),
              thickness: 1.0,
              height: size.height / 80,
            ),
            // Product Total Price (Start)
            SizedBox(
              height: size.height / 80,
            ),
            Row(
              children: [
                Spacer(),
                Text(
                  '3 Item(s), Total: ',
                  style: TextStyle(
                    color: Color(0xFF828282),
                  ),
                ),
                Text(
                  'RM75.00',
                  style: TextStyle(
                    color: Color(0xFF828282),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            // Product Total Price (End)
          ],
        ),
      ),
    );
  }
}
