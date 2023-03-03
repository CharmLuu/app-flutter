

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
                    'Phương thức thanh toán',
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

class NumberList {
  String number;
  int index;
  String icon;
  NumberList({required this.number, required this.index, required this.icon});
}

class _RadioPaymentmethodState extends State<RadioPaymentmethod> {
  String radioItem = 'Thanh toán khi nhận hàng';
  int id = 1;
 
  List<NumberList> nList = [
    NumberList(
      index: 1,
      icon: "assets/images/icons/payment1.svg",
      number: "Thanh toán khi nhận hàng",
    ),
    NumberList(
      index: 2,
      icon: "assets/images/icons/payment2.svg",
      number: "Thẻ tín dụng/ ghi nợ",
    ),
    NumberList(
      index: 3,
      icon: "assets/images/icons/payment3.svg",
      number: "Thẻ ATM/ Internet Banking",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 350.0,
      child: Column(
        children: 
          nList.map((data) => Card(
            margin: EdgeInsets.only(bottom: 10),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: (data.index == id)? colorTheme : colorGrey1,
                width: (data.index == id)? 2.0 : 1.0
              ),
              borderRadius: BorderRadius.circular(20)
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Stack(
                children: [
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("${data.icon}"),
                      SizedBox(width: 10),
                      Text(
                        "${data.number}",
                        style: PrimaryFont.semi(14).copyWith(
                          color: (data.index == id)? colorTheme : colorBlack
                        ),
                      ),
                      SizedBox(width: 10),
                      Visibility(
                        visible: (data.index == id)? true : false,
                        child: Icon(
                          FontAwesomeIcons.solidCircleCheck,
                          color: colorTheme,
                        ),
                      )
                    ],
                  ),
                  Positioned(
                  top: 0,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Opacity(
                    opacity: 0,
                    child: Radio(
                      groupValue: id,
                      value: data.index,
                      onChanged: (val) {
                        setState(() {
                          radioItem = data.number ;
                          id = data.index;
                          // data.isCheck = !data.isCheck;
                        });
                      },
                    ),
                  ),
                )
                ]
              ),
            ),
          )).toList(),
      ),
    );
  }
}