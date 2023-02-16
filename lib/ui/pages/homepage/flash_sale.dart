import 'package:app_demo/data/product_storage.dart';
import 'package:app_demo/ui/theme.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/material.dart';

import '../../components/product_slider.dart';

final productStorage = AssetProductStorage();

class FlashsaleHomepage extends StatelessWidget {
  const FlashsaleHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      // decoration: BoxDecoration(
      //   image: DecorationImage(
      //     image: AssetImage("assets/images/bg-fs.png"),
      //     fit: BoxFit.cover,
      //     alignment: Alignment.topLeft,
      //   ),
      // ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(right: 25),
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(60),
                bottomRight: Radius.circular(60),
              ),
              color: colorTheme,
              boxShadow: [
                BoxShadow( 
                  color: colorTheme.withOpacity(0.2),
                  // blurRadius: 4,
                  offset: Offset(-9, -8),
                )
              ],
              // image: DecorationImage(
              //   image: AssetImage("assets/images/icons/flash.png"),
              //   alignment: Alignment.centerRight,
              // )
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 37, top: 10, left: 25, bottom: 10),
                  child: Text(
                    'Săn sale Bỉm sữa'.toUpperCase(),
                    style: PrimaryFont.fontSecond(18).copyWith(
                      color: colorSecond,
                    )
                  ),
                ),
                Positioned(
                  right: 0,
                  top: -10,
                  width: 27,
                  height: 43,
                  child: FittedBox(
                    child: SvgPicture.asset('assets/images/icons/flash.svg'),
                    fit: BoxFit.fill,
                  ),
                ),
                
              ],
            ),
            // child: Text(
            //   'Săn sale Bỉm sữa'.toUpperCase(),
            //   style: PrimaryFont.fontSecond(18).copyWith(
            //     color: colorSecond,
            //   )
            // ),
          ),
          Container(
            color: colorTheme,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              children: [
                Container(
                  // color: colorBlack,
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: colorWhite,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                    child: Text(
                      '22',
                      style: PrimaryFont.bold(14).copyWith(
                        color: colorBlack,
                      )
                    ),
                  ),
                ), 
                Container(
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: colorWhite,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                    child: Text(
                      '56',
                      style: PrimaryFont.bold(14).copyWith(
                        color: colorBlack,
                      )
                    ),
                  ),
                ),
                Container(
                  // color: colorBlack,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: colorWhite,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                    child: Text(
                      '34',
                      style: PrimaryFont.bold(14).copyWith(
                        color: colorBlack,
                      )
                    ),
                  ),
                ), 
              ],
            ),
          ),
          Container(
            color: colorTheme,
            padding: EdgeInsets.only(bottom: 12),
            child: Container(
              color: colorWhite,
              padding: EdgeInsets.only(top: 20, left: 20),
              child: ProductSlider()
            ),
          ),
        ],
      ),
    );
  }
}

