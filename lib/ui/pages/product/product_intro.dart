import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../theme.dart';

class ProductIntro extends StatelessWidget {
  // const ProductIntro({super.key});

  final List<IntroTabs> introtabs = [
    IntroTabs(
      icon: 'assets/images/icons/intro1.svg',
      label: 'Chính hãng 100%'
    ),
    IntroTabs(
      icon: 'assets/images/icons/intro2.svg',
      label: 'Bảo hành trọn đời'
    ),
    IntroTabs(
      icon: 'assets/images/icons/intro3.svg',
      label: 'Miễn phí vận chuyển'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ...introtabs
        ],
      ),
    );
  }
}

class IntroTabs extends StatelessWidget {
  final String icon;
  final String label;

  IntroTabs({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      child: Row(
        children: [
          SvgPicture.asset(icon),
          Container(
            margin: EdgeInsets.only(left: 5),
            child: Text(
              label,
              style: PrimaryFont.fontSize(12),
            ),
          )
        ],
      ),
    );
  }
}
