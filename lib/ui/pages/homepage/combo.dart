import 'package:flutter/material.dart';

import '../../components/product_slider.dart';
import '../../theme.dart';

class ComboHomepage extends StatelessWidget {
  const ComboHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        children: [
          Container(
            // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            margin: const EdgeInsets.only(bottom: 20),
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
                    fit: BoxFit.fill,
                    child: Image.asset('assets/images/icons/combo1.png'),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  child: Text('Combo siêu tiết kiệm'.toUpperCase(),
                      style: PrimaryFont.fontSecond(20).copyWith(
                        color: colorTheme,
                      )),
                ),
                Positioned(
                  right: -27,
                  top: -10,
                  width: 50,
                  height: 50,
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Image.asset('assets/images/icons/combo2.png'),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/images/bg-combo.png"),
              // alignment: Alignment.centerRight,
              fit: BoxFit.cover,
            )),
            child: const Padding(
              padding: EdgeInsets.only(left: 20, bottom: 20),
              child: ProductSlider(),
            ),
          ),
        ],
      ),
    );
  }
}
