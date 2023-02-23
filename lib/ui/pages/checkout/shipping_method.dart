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

class _RadioShippingMethodState extends State<RadioShippingMethod> {
  int value = 1;
  Widget CustomRadioButton(String text, int index) {
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
        CustomRadioButton("Giao hàng tận nơi | 23.000đ", 1),
        CustomRadioButton("Giao hàng nhanh | 18.700đ", 2),
        CustomRadioButton("GHTK | 18.600đ", 3)
      ],
    );
  }
}
