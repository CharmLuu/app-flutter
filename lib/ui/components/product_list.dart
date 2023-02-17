

import 'package:auto_size_text/auto_size_text.dart';
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
      builder:  (context, snapshot) {
        if(snapshot.hasError){
          return Center(
            child: Text(snapshot.error.toString()),
          );
        }
        if(!snapshot.hasData){
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        final products = snapshot.data!;
        
        return GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 0.55,
          ),
          itemCount: products.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              margin: EdgeInsets.zero,
              elevation: 0,
              color: Colors.transparent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Flexible(
                  flex: 4,
                  child: InkWell(
                    onTap: (){
                      Navigator.of(context).pushNamed('$ProductPage');
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 20),
                      // height: MediaQuery.of(context).size.width * 0.5 - 40,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(products[index].thumbnail),
                          // fit: BoxFit.cover,
                        )
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 5,
                  child: Column(
                    children: [
                      Flexible(
                        flex: 4,
                        child: Container(
                          margin: EdgeInsets.only(bottom: 5),
                          child: AutoSizeText(
                            products[index].title,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: PrimaryFont.fontSize(14),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 6,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              flex: 5,
                              child: Wrap(
                                direction: Axis.vertical,
                                spacing: 4,
                                children: [
                                  FittedBox(
                                    child: Text(
                                        products[index].price,
                                        style: PrimaryFont.bold(16),
                                      ),
                                  ),
                                  Container(
                                    // margin: EdgeInsets.only(bottom: 5),
                                    child: Text(
                                      products[index].old_price,
                                      style: PrimaryFont.fontSize(10).copyWith(
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                    )
                                  ),                                                    
                                  Container(
                                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 5),
                                    decoration: BoxDecoration(
                                      color: colorTheme,
                                      borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: Text(
                                      '-20%',
                                      style: PrimaryFont.bold(10).copyWith(
                                        color: colorWhite
                                      ),
                                    )
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              child: IconButton(
                                onPressed: () {},
                                // icon: Image.asset('assets/images/icons/combo1.png'),
                                icon: SvgPicture.asset('assets/images/icons/button_cart.svg'),
                                iconSize: 10,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                
              ]),
            );
          }
        );
      }                
    );
  }
}