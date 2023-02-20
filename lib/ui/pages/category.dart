import 'package:flutter/material.dart';

import '../components/brand_slider.dart';
import '../components/page_title.dart';
import '../components/product_list.dart';
import 'category/toolbar_product.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding: const EdgeInsets.all(20),
            child: const PageTitle(data: 'Thế giới sữa cho bé')),
        Container(
            padding: const EdgeInsets.only(left: 20, bottom: 30),
            child: const BrandSlider()),
        const ToolbarProduct(),
        Container(
          padding: const EdgeInsets.all(20),
          child: const ProductItems(),
        ),
      ],
    );
  }
}
