import 'package:flutter/material.dart';

import '../../components/product_slider.dart';
import '../../theme.dart';

class ComboHomepage extends StatelessWidget {
  const ComboHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        children: [
          Container(
            // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            margin: EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: colorSecond,
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  left: -27,
                  top: -10,
                  width: 64,
                  height: 63,
                  child: FittedBox(
                    child: Image.asset('assets/images/icons/combo1.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  child: Text(
                    'Combo siêu tiết kiệm'.toUpperCase(),
                    style: PrimaryFont.fontSecond(20).copyWith(
                      color: colorTheme,
                    )
                  ),
                ),
                Positioned(
                  right: -27,
                  top: -10,
                  width: 50,
                  height: 50,
                  child: FittedBox(
                    child: Image.asset('assets/images/icons/combo2.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
           Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg-combo.png"),
                // alignment: Alignment.centerRight,
                fit: BoxFit.cover,
              )
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 20),
              child: ProductSlider(),
              
            ),
          ),
        ],
      ),
    );
  }
}