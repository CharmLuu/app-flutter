import 'package:app_demo/ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'checkout.dart';

class CartPage extends StatelessWidget {
  CartPage({super.key});

  @override
  Widget cartItem = Container(
    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(color: colorGrey1)
      )
    ),
    child: Row(
      children: [
        Flexible(
          flex: 2,
          child: Image.network('https://product.hstatic.net/200000382533/product/3_e1b095977e944acc873835fab45634ae_large.jpg')
        ),
        Flexible(
          flex: 8,
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 5),
                  child: Text('Bỉm tã quần Moony bé trai size L 44 miếng 9-14kg')
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 5),
                  child: RichText(
                    text: TextSpan(
                      text: 'Phân loại: ',
                      style: PrimaryFont.fontSize(14).copyWith(
                        color: colorBlack
                      ),
                      children: const <TextSpan>[
                        TextSpan(text: 'White,'),
                        TextSpan(text: ' S'),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: RichText(
                    text: TextSpan(
                      style: PrimaryFont.fontSize(14).copyWith(
                        color: colorBlack
                      ),
                      children: const <TextSpan>[
                        TextSpan(
                          text: '298.000đ',
                          style: TextStyle(
                            color: colorGrey2,
                            decoration: TextDecoration.lineThrough
                          )
                        ),
                        TextSpan(
                          text: ' 175.000đ',
                          style: TextStyle(
                            color: colorTheme,
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                          )
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 98,
                  padding: EdgeInsets.symmetric(vertical: 3),
                  decoration: BoxDecoration(
                    color: colorGreyLight2,
                    borderRadius: BorderRadius.circular(4)
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        constraints: BoxConstraints(
                          maxHeight: 28
                        ),
                        icon: Icon(
                          FontAwesomeIcons.minus,
                          size: 14,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: colorWhite,
                          borderRadius: BorderRadius.circular(4)
                        ),
                        width: 30,
                        height: 24,
                        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        child: Text(
                          '1',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            height: 1.2
                          ),
                        )
                      ),
                      IconButton(
                        onPressed: () {},
                        padding: EdgeInsets.symmetric(horizontal: 5),
  
                        constraints: BoxConstraints(
                          maxHeight: 28
                        ),
                        icon: Icon(
                          FontAwesomeIcons.plus,
                          size: 14,
                        )
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ),
      ],
    ),
  );

  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          cartItem,
          cartItem,
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('$CheckoutPage');
              }, 
              child: Text('Mua hàng'),
              style: ElevatedButton.styleFrom(
                backgroundColor: colorTheme,
                fixedSize: Size(context.w - 40, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}