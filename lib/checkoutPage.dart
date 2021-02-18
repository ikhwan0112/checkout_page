import 'package:checkout_page/components/cardInfo.dart';
import 'package:checkout_page/productInfo.dart';
import 'package:checkout_page/summaryPayment.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatefulWidget {
  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  int selectedDeliveryOption = -1, selectedPaymentMethod = -1;

  Widget cardDeliveryAddress(Size size) {
    return CardInfo(
      child: Container(
        width: size.width / 1,
        padding: EdgeInsets.fromLTRB(
          size.height / 50,
          size.height / 60,
          size.height / 20,
          size.height / 60,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'User Full Name|(+60) 12-3456789',
              style: TextStyle(
                color: Color(0xFF928069),
                fontSize: 17,
              ),
            ),
            SizedBox(
              height: size.height / 100,
            ),
            Text(
              '5 Jalan Jurunilai U1/20\nHicom Glenmarie Industrial Park\n40150 Shah Alam\nSelangor',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget cardDeliveryOption(Size size) {
    return Container(
      height: size.height / 6,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (context, index) => InkWell(
          onTap: () => setState(() => selectedDeliveryOption = index),
          child: CardInfo(
            child: (selectedDeliveryOption == index)
                ? Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[350],
                    ),
                    padding: EdgeInsets.fromLTRB(
                      size.height / 50,
                      0,
                      size.height / 50,
                      0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Free',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF928069),
                          ),
                        ),
                        SizedBox(
                          height: size.height / 90,
                        ),
                        Text(
                          'Standard Delivery',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: size.height / 90,
                        ),
                        Text(
                          'Est. Arrival: 24 Dec-4 Jan 2021',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF828282),
                          ),
                        ),
                      ],
                    ),
                  )
                : Container(
                    padding: EdgeInsets.fromLTRB(
                      size.height / 50,
                      0,
                      size.height / 50,
                      0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Free',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF928069),
                          ),
                        ),
                        SizedBox(
                          height: size.height / 90,
                        ),
                        Text(
                          'Standard Delivery',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: size.height / 90,
                        ),
                        Text(
                          'Est. Arrival: 24 Dec-4 Jan 2021',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF828282),
                          ),
                        ),
                      ],
                    ),
                  ),
          ),
        ),
      ),
    );
  }

  Widget cardPaymentMethod(Size size) {
    return Container(
      height: size.height / 6,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (context, index) => InkWell(
          onTap: () => setState(() => selectedPaymentMethod = index),
          child: CardInfo(
            child: (selectedPaymentMethod == index)
                ? Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[350],
                    ),
                    padding: EdgeInsets.fromLTRB(
                      size.height / 50,
                      0,
                      size.height / 50,
                      0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          height: size.height / 30,
                          width: size.width / 10,
                          image:
                              AssetImage('assets/images/mastercard_logo.png'),
                        ),
                        SizedBox(
                          height: size.height / 90,
                        ),
                        Text(
                          '****-****-****-1234',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          height: size.height / 90,
                        ),
                        Text(
                          'Credit/Debit Card',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF828282),
                          ),
                        ),
                      ],
                    ),
                  )
                : Container(
                    padding: EdgeInsets.fromLTRB(
                      size.height / 50,
                      0,
                      size.height / 50,
                      0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          height: size.height / 30,
                          width: size.width / 10,
                          image:
                              AssetImage('assets/images/mastercard_logo.png'),
                        ),
                        SizedBox(
                          height: size.height / 90,
                        ),
                        Text(
                          '****-****-****-1234',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          height: size.height / 90,
                        ),
                        Text(
                          'Credit/Debit Card',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF828282),
                          ),
                        ),
                      ],
                    ),
                  ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Checkout',
          style: TextStyle(
            color: Color(0xFF928069),
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Color(0xFFEEEEF0),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
            size.width / 15,
            size.height / 40,
            size.width / 15,
            size.height / 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Delivery Address',
                    style: TextStyle(fontSize: 21),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Edit',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF928069),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height / 100,
              ),
              cardDeliveryAddress(size),
              SizedBox(
                height: size.height / 60,
              ),
              Text(
                'Delivery Option',
                style: TextStyle(fontSize: 21),
              ),
              cardDeliveryOption(size),
              SizedBox(
                height: size.height / 60,
              ),
              ProductInfo(),
              SizedBox(
                height: size.height / 60,
              ),
              Text(
                'Payment Method',
                style: TextStyle(fontSize: 21),
              ),
              cardPaymentMethod(size),
              SizedBox(
                height: size.height / 60,
              ),
              SummaryPayment(),
            ],
          ),
        ),
      ),
    );
  }
}

