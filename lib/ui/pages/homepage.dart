import 'package:flutter/material.dart';

import '../theme.dart';
import 'homepage/banner.dart';
import 'homepage/banner_sale.dart';
import 'homepage/best_seller.dart';
import 'homepage/cate_widget.dart';
import 'homepage/combo.dart';
import 'homepage/flash_sale.dart';
import 'homepage/top_search.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BannerHomepage(),
        TopSearchHomepage(),
        const FlashsaleHomepage(),
        const BannerSaleHomepage(),
        const BestsellerHomepage(),
        const ComboHomepage(),
        const Banner3colHomepage(),
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: const Divider(
            height: 10,
            color: colorGreyLight1,
            thickness: 10,
            indent: 20,
            endIndent: 20,
          ),
        ),
        const CateHomepage(),
      ],
    );
  }
}
