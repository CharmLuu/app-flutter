import 'package:flutter/material.dart';

import '../../../theme.dart';

class RecentOrder{
  String prImg;
  String prName;
  String prPrice;
  RecentOrder({Key? key, required this.prImg, required this.prName, required this.prPrice});
}

class RecentlyOrders extends StatefulWidget {
  const RecentlyOrders({super.key});

  @override
  State<RecentlyOrders> createState() => _RecentlyOrdersState();
}

class _RecentlyOrdersState extends State<RecentlyOrders> {
  List<RecentOrder> productorders = [
    RecentOrder(
      prImg: 'https://product.hstatic.net/200000382533/product/3_e1b095977e944acc873835fab45634ae_large.jpg',
      prName: 'Sữa Blackmores Newborn số 1 900g (0 - 6 tháng)',
      prPrice: '555.000đ',
    ),
    RecentOrder(
      prImg: 'https://product.hstatic.net/200000382533/product/3_e1b095977e944acc873835fab45634ae_large.jpg',
      prName: 'Combo 5 Sữa Meiji nhập khẩu dạng thanh 1-3 tuổi (thanh lẻ)',
      prPrice: '555.000đ',
    ),
    RecentOrder(
      prImg: 'https://product.hstatic.net/200000382533/product/3_e1b095977e944acc873835fab45634ae_large.jpg',
      prName: 'Combo 5 Sữa Meiji thanh nhập khẩu (0-1 tuổi) (thanh lẻ)',
      prPrice: '555.000đ',
    ),
    RecentOrder(
      prImg: 'https://product.hstatic.net/200000382533/product/3_e1b095977e944acc873835fab45634ae_large.jpg',
      prName: 'Sữa Meiji thanh nhập khẩu (1-3 tuổi)',
      prPrice: '555.000đ',
    ),
    RecentOrder(
      prImg: 'https://product.hstatic.net/200000382533/product/3_e1b095977e944acc873835fab45634ae_large.jpg',
      prName: 'Bỉm Mây',
      prPrice: '555.000đ',
    ),
    RecentOrder(
      prImg: 'https://product.hstatic.net/200000382533/product/3_e1b095977e944acc873835fab45634ae_large.jpg',
      prName: 'Sữa Aptakid New Zealand số 3 900g (> 2 tuổi)',
      prPrice: '555.000đ',
    ),
    RecentOrder(
      prImg: 'https://product.hstatic.net/200000382533/product/3_e1b095977e944acc873835fab45634ae_large.jpg',
      prName: 'Bỉm Goldgi quần XL44 (12-17kg)',
      prPrice: '555.000đ',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 4,
      itemBuilder: (context, index) {
        return ListTile(
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          shape: Border(
            bottom: BorderSide(color: colorGreyLight1)
          ),
          leading: Image.network(productorders[index].prImg),
          title: Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              productorders[index].prName,
              style: TextStyle(
                fontSize: 14
              ),
            ),
          ),
          subtitle: Text(
            productorders[index].prPrice,
            style: PrimaryFont.bold(14).copyWith(
              color: colorBlack
            )
          ),
        );
      }
    );
  }
}