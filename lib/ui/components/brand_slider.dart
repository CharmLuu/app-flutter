

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../data/brand_storage.dart';
import '../theme.dart';

final brandStorage = AssetBrandStorage();

class BrandSlider extends StatelessWidget {
  const BrandSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: brandStorage.load(),
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

        final brands = snapshot.data!;
        return CarouselSlider.builder(
          itemCount: brands.length,  
          itemBuilder: (context, index, realIndex) {
            return Container(
              padding: const EdgeInsets.all(10),
              margin: EdgeInsets.only(right: 10),
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: colorWhite,
                boxShadow: [
                  BoxShadow( 
                    color: colorBlack.withOpacity(0.1),
                    blurRadius: 10,
                    offset: Offset(0, 0),
                  )
                ],
                // image: DecorationImage(
                //   image: AssetImage(brands[index].bannerUrl),
                //   // fit: BoxFit.cover,
                // )
              ),
              child: Image.asset(brands[index].bannerUrl),
            );
          }, 
          options: CarouselOptions(
            height: 40,
            viewportFraction: .225,
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