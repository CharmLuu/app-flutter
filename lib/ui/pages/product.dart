import 'package:app_demo/ui/pages/product/product_info.dart';
import 'package:app_demo/ui/pages/product/product_media.dart';
import 'package:flutter/material.dart';

import '../components/header.dart';

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
                child: Column(children: const [
                  ProductMedia(),
                  ProductInfo(),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
