import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../data/product_storage.dart';
import '../../components/product_slider.dart';
import '../../theme.dart';

final productStorage = AssetProductStorage();

class BestsellerHomepage extends StatelessWidget {
  const BestsellerHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorTheme.withOpacity(.3),
      margin: const EdgeInsets.only(top: 40),
      child: Column(
        children: [
          Container(
            transform: Matrix4.translationValues(0.0, -20.0, 0.0),
            // margin: EdgeInsets.only(bottom: 25),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(60),
                bottomRight: Radius.circular(60),
              ),
              color: colorSecond,
              boxShadow: [
                BoxShadow(
                  color: colorTheme,
                  // blurRadius: 4,
                  offset: Offset(-4.5, -4),
                )
              ],
            ),
            child: Text('Sản phẩm bán chạy'.toUpperCase(),
                style: PrimaryFont.fontSecond(16).copyWith(
                  color: colorTheme,
                )),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, bottom: 30),
            child: ProductSlider(),
          ),
        ],
      ),
    );
  }
}
