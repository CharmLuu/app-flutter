

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../data/bannersale_storage.dart';
import 'block_title.dart';

final bnsaleStorage = AssetBannersaleStorage();

class BannerSaleHomepage extends StatelessWidget {
  const BannerSaleHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          // CustomTitleHomepage(data: 'Giam gia doc quyen'),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: BannersaleList(),
          ),
        ],
      ),
    );
  }
}

class BannersaleList extends StatelessWidget {
  const BannersaleList({super.key});

  @override
  Widget build(BuildContext context) {
   return FutureBuilder(
      future: bnsaleStorage.load(),
      builder: (context, snapshot) {
        if(snapshot.hasError){
          return Center(
            child: Text(snapshot.error.toString()),
          );
        }

        final bnsales = snapshot.data!;
        return CarouselSlider.builder(
          itemCount: bnsales.length, 
          itemBuilder: (context, index, realIndex) {
            return Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage(bnsales[index].bannerUrl),
                    fit: BoxFit.cover,
                  ), 
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
            );
          },
          options: CarouselOptions(
            height: 120,
            viewportFraction: .4,
            pageSnapping: true,
            padEnds: false,
          )
        );
      }
    );
  }
}