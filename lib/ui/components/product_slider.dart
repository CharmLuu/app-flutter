import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../data/product_storage.dart';
import '../theme.dart';

final productStorage = AssetProductStorage();

class ProductSlider extends StatelessWidget {
  const ProductSlider({super.key});

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
        return CarouselSlider.builder(
          itemCount: products.length,  
          itemBuilder: (context, index, realIndex) {
            final product = products[index];
            return Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  // color: colorWhite,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Container(
                        height: 170,
                        child: FittedBox(
                          child: Image.network(products[index].thumbnail),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                    //   child: Container(
                    //     child: Align(
                    //       child: Text(
                    //         products[index].brand.toUpperCase(),
                    //         style: PrimaryFont.bold(12),
                    //       ),
                    //       alignment: Alignment.topLeft,
                    //     ),
                    //   ),
                    // ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                      child: Container(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            products[index].title,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: PrimaryFont.bold(11),
                          ),
                          
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                      child: Container(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            products[index].price,
                            style: PrimaryFont.bold(14).copyWith(
                              color: colorTheme
                            ),
                          )
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }, 
          options: CarouselOptions(
            height: 250,
            viewportFraction: .45,
            // autoPlay: true,
            pageSnapping: true,
            // disableCenter: false,
            padEnds: false,
          )
        );
      }                
    );
  }
}