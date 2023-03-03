

import 'package:app_demo/ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../components/header2.dart';

class WishlistPage extends StatelessWidget {
  WishlistPage({super.key});

  List<WishlishItem> witems =[
    WishlishItem(
      name: 'Túi Xách Lớn Tote Khóa Xoay Monogram',
      price: '799.000đ',
      old_price: '920.000đ',
      urlImg: 'assets/images/product/pr1.png'
    ),
    WishlishItem(
      name: 'Test01',
      price: '799.000đ',
      old_price: '920.000đ',
      urlImg: 'assets/images/product/pr2.png'
    ),
    WishlishItem(
      name: 'Túi Xách Lớn Tote Khóa Xoay Test012',
      price: '799.000đ',
      old_price: '920.000đ',
      urlImg: 'assets/images/product/pr3.png'
    ),
    WishlishItem(
      name: 'Test013',
      price: '799.000đ',
      old_price: '920.000đ',
      urlImg: 'assets/images/product/pr4.png'
    ),
    WishlishItem(
      name: 'Túi Xách Lớn Tote Khóa Xoay Monogram Test015',
      price: '799.000đ',
      old_price: '920.000đ',
      urlImg: 'assets/images/product/pr5.png'
    ),
    WishlishItem(
      name: 'Túi Xách Lớn Tote Khóa Xoay Monogram Test016',
      price: '799.000đ',
      old_price: '920.000đ',
      urlImg: 'assets/images/product/pr6.png'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HeaderType2(data: 'My Wishlist'),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: witems.length,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(bottom: 20),
                          decoration: BoxDecoration(
                            color: colorWhite,
                            boxShadow: [
                              BoxShadow(
                                color: colorBlack.withOpacity(0.1),
                                blurRadius: 10,
                                  offset: Offset(0,0),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(11)
                          ),
                          child: Row(
                            children: [
                              Flexible(
                                flex: 3,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(11),
                                  child: Image.asset(witems[index].urlImg)
                                ),
                              ),
                              Flexible(
                                flex: 7,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        witems[index].name,
                                        style: PrimaryFont.semi(16),
                                      ),
                                      SizedBox(height: 7,),
                                      Stack(
                                        children: [
                                          FractionallySizedBox(
                                            widthFactor: 1,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  witems[index].old_price,
                                                  style: TextStyle(
                                                    decoration: TextDecoration.lineThrough,
                                                    // decorationColor: colorBlack,
                                                    // decorationStyle: TextDecorationStyle.solid,
                                                    color: colorGrey1
                                                  ),
                                                ),
                                                Text(
                                                  witems[index].price,
                                                  style: PrimaryFont.bold(16),
                                                ),
                                              ],
                                            ),
                                          ),
                                          
                                          Positioned(
                                            bottom: 0,
                                            right: 0,
                                            child: SvgPicture.asset('assets/images/icons/button_cart.svg')
                                          )
                                        ],
                                      ),
                                      
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )
                        );
                      },
                    ),
                    
                  ],
                ).p(),
              ),
            )
          ],
        ),
      ),
      
    );
  }
}

class WishlishItem{
  final String name;
  final String price;
  final String old_price;
  final String urlImg;
  WishlishItem({required this.name, required this.price, required this.old_price, required this.urlImg});
}