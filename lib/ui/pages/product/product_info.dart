import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../components/product_review.dart';
import '../../theme.dart';
import 'product_intro.dart';
import 'product_shortdes.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '399.000đ',
                      style: PrimaryFont.bold(18).copyWith(
                        color: colorTheme
                      ),
                    ),
                    Text(
                      '479.000đ',
                      style: PrimaryFont.fontSize(14).copyWith(
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ]
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 15, bottom: 15, right: 10, left: 30),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/pdp_fs.png'),
                    fit: BoxFit.cover
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 5),
                      child: Text(
                        'Kết thúc trong'.toUpperCase(),
                        style: PrimaryFont.bold(13),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: colorTheme,
                          ),
                          child: Text(
                            '12',
                            style: PrimaryFont.bold(14).copyWith(
                              color: colorWhite,
                            )
                          ),
                        ), 
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Text(':'),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: colorTheme,
                          ),
                          child: Text(
                            '09',
                            style: PrimaryFont.bold(14).copyWith(
                              color: colorWhite,
                            )
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Text(':'),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: colorTheme,
                          ),
                          child: Text(
                            '05',
                            style: PrimaryFont.bold(14).copyWith(
                              color: colorWhite,
                            )
                          ),
                        ), 
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Text(
            'Bỉm tã quần Moony bé trai size XXL 26 miếng (13-28kg)',
            style: PrimaryFont.bold(20),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ProductReview(),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: ProductShortDes(),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: ProductIntro(),
        ),
      ],
    );
  }
}