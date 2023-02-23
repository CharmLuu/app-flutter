

import 'package:app_demo/ui/theme.dart';
import 'package:flutter/material.dart';

import '../components/header.dart';
import 'checkout/order_summary.dart';
import 'checkout/payment_method.dart';
import 'checkout/shipping_address.dart';
import 'checkout/shipping_method.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Header(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    OrderSummary(),
                    Container(
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        color: colorWhite,
                        boxShadow: [
                          BoxShadow( 
                            color: colorBlack.withOpacity(0.1),
                            blurRadius: 10,
                            offset: Offset(0, 0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        children: [
                          ShippingAddress(),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 20),
                            child: Divider(
                              color: colorGreyLight2,
                              thickness: 1,
                            ),
                          ),
                          ShippingMethod(),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 20),
                            child: Divider(
                              color: colorGreyLight2,
                              thickness: 1,
                            ),
                          ),
                          PaymentMethod(),
                        ],
                      ),
                    )
                  ],
                ).pxBase(),
              )
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                color: colorWhite,
                boxShadow: [
                  BoxShadow( 
                    color: colorBlack.withOpacity(0.1),
                    blurRadius: 10,
                    offset: Offset(0, -5),
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Tổng thanh toán \n',
                      style: PrimaryFont.fontSize(14).copyWith(
                        color: colorGrey2
                      ),
                      children: const <TextSpan>[
                        TextSpan(
                          text: '983.000đ', 
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: colorTheme
                          )
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {}, 
                    child: Text(
                      'Mua hàng',
                      style: PrimaryFont.bold(16),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: colorTheme,
                      fixedSize: Size(context.w * 0.4, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}