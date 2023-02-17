import 'package:flutter/material.dart';

import '../components/header.dart';
import '../components/page_title.dart';
import '../components/product_slider.dart';
import 'product/product_delivery.dart';
import 'product/product_des.dart';
import 'product/product_info.dart';
import 'product/product_media.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Header(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(children: [
                  ProductMedia(),
                  ProductInfo(),
                  ProductDelivery(),
                  Container(
                    padding: EdgeInsets.only(left: 20, bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: PageSubTitle(data: 'Thường Được Mua Cùng'),
                        ),
                        ProductSlider(),
                      ],
                    ),
                  ),
                  ProductFullDes(),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
