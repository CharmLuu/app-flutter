

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../theme.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  child: SvgPicture.asset('assets/images/icons/shipping.svg'),
                ),
                Container(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    'Phương thức vận chuyển',
                    style: PrimaryFont.semi(16),
                  ),
                )
              ],
            ),
          ),
          RadioPaymentmethod(),
        ],
      ),
    );
  }
}

class RadioPaymentmethod extends StatefulWidget {
  const RadioPaymentmethod({super.key});

  @override
  State<RadioPaymentmethod> createState() => _RadioPaymentmethodState();
}

class _RadioPaymentmethodState extends State<RadioPaymentmethod> {
  int value = 1;
  Widget CustomRadioButton(String text, int index, String urlIcon) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: OutlinedButton(
        onPressed: () {
          setState(() {
            value = index;
          });
        },
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          side: BorderSide(
            color: (value == index) ? colorTheme : colorGrey2,
            width: (value == index) ? 2 : 1,
          ),
        ),
        child: FittedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(urlIcon),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  text,
                  style: TextStyle(
                    color: (value == index) ? colorTheme : Colors.black,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),
              Icon(
                (value == index) ? FontAwesomeIcons.solidCircleCheck : null,
                color: colorTheme,
                size: 14,
              ),
            ],
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CustomRadioButton("Thanh toán khi nhận hàng", 1, 'assets/images/icons/payment1.svg'),
        CustomRadioButton("Thẻ tín dụng/ ghi nợ", 2, 'assets/images/icons/payment2.svg'),
        CustomRadioButton("Thẻ ATM/ Internet Banking", 3, 'assets/images/icons/payment3.svg'),
        CustomRadioButton("Ví VNPay", 4, 'assets/images/icons/payment4.svg'),
        CustomRadioButton("Ví Shopee Pay", 5, 'assets/images/icons/payment5.svg'),
      ],
    );
  }
}