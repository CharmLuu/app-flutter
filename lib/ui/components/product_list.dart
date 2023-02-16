import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../data/product_storage.dart';
import '../pages/product.dart';
import '../theme.dart';

final productStorage = AssetProductStorage();

class ProductItems extends StatelessWidget {
  const ProductItems({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: productStorage.load(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          }
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          final products = snapshot.data!;

          return GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                childAspectRatio: 0.58,
              ),
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  margin: EdgeInsets.zero,
                  elevation: 0,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed('$ProductPage');
                          },
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 20),
                            height:
                                MediaQuery.of(context).size.width * 0.5 - 40,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: NetworkImage(products[index].thumbnail),
                              fit: BoxFit.contain,
                            )),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 8),
                          child: Text(
                            products[index].title,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: PrimaryFont.fontSize(14),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      margin: const EdgeInsets.only(bottom: 5),
                                      child: Text(
                                        products[index].price,
                                        style: PrimaryFont.bold(16),
                                      )),
                                  Container(
                                      margin: const EdgeInsets.only(bottom: 5),
                                      child: Text(
                                        products[index].old_price,
                                        style:
                                            PrimaryFont.fontSize(10).copyWith(
                                          decoration:
                                              TextDecoration.lineThrough,
                                        ),
                                      )),
                                  Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 4, horizontal: 5),
                                      decoration: BoxDecoration(
                                          color: colorTheme,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Text(
                                        '-20%',
                                        style: PrimaryFont.bold(10)
                                            .copyWith(color: colorWhite),
                                      )),
                                ],
                              ),
                            ),
                            Flexible(
                              child: IconButton(
                                onPressed: () {},
                                // icon: Image.asset('assets/images/icons/combo1.png'),
                                icon: SvgPicture.asset(
                                    'assets/images/icons/button_cart.svg'),
                                iconSize: 10,
                              ),
                            )
                          ],
                        )
                      ]),
                );
              });
        });
  }
}
