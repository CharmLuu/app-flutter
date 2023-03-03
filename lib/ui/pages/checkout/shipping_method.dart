import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../theme.dart';

class ShippingMethod extends StatelessWidget {
  const ShippingMethod({super.key});

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
          RadioShippingMethod(),
        ],
      ),
    );
  }
}

class RadioShippingMethod extends StatefulWidget {
  const RadioShippingMethod({super.key});

  @override
  State<RadioShippingMethod> createState() => _RadioShippingMethodState();
}

class shippingList{
  int index;
  String name;
  String price;
  shippingList({required this.index, required this.name, required this.price});
}

class _RadioShippingMethodState extends State<RadioShippingMethod> {
  String radioItem = 'Giao hàng tận nơi';
  int id = 1;

  List<shippingList> sList = [
    shippingList(
      index: 1,
      name: "Giao hàng tận nơi",
      price: "23.000d"
    ),
    shippingList(
      index: 2,
      name: "GHN",
      price: "18.500d"
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: 
          sList.map((e) => Card(
            margin: EdgeInsets.only(bottom: 10),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: (e.index == id)? colorTheme : colorGrey1,
                width: (e.index == id)? 2.0 : 1.0
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
                      Text(
                        "${e.name}",
                        style: PrimaryFont.semi(14).copyWith(
                          color: (e.index == id)? colorTheme : colorBlack
                        ),
                      ),
                      SizedBox(
                        width: 12, 
                        child: Text(
                          '|',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: (e.index == id)? colorTheme : colorBlack
                          ),
                        ),
                      ),
                      Text(
                        "${e.price}",
                        style: PrimaryFont.semi(14).copyWith(
                          color: (e.index == id)? colorTheme : colorBlack
                        ),
                      ),
                      SizedBox(width: 10),
                      Visibility(
                        visible: (e.index == id)? true : false,
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
                      value: e.index,
                      onChanged: (val) {
                        setState(() {
                          radioItem = e.name ;
                          id = e.index;
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
