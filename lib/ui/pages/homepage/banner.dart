import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../theme.dart';

class BannerHomepage extends StatefulWidget {
  const BannerHomepage({super.key});

  @override
  State<BannerHomepage> createState() => _BannerHomepageState();
}

class _BannerHomepageState extends State<BannerHomepage> {
  int activeIndex = 0;
  final urlImages =[
    "assets/images/home-banner/banner1.png",
    "assets/images/home-banner/banner2.png",
    "assets/images/home-banner/banner3.png",
    "assets/images/home-banner/banner4.png",
  ];

  @override
  Widget build(BuildContext context) {
    Widget buildImage(String urlImage, int index) => Card(
      margin: EdgeInsets.zero,
      elevation: 0,
      child: Container(
        decoration: new BoxDecoration(
          image: DecorationImage(
              image: new AssetImage(urlImage),
              fit: BoxFit.cover
          ),
        ),
      ),
      
    );

    Widget buildPager() => Container(
      transform: Matrix4.translationValues(0.0, -14.0, 0.0),

      child: AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: urlImages.length,
        effect: ExpandingDotsEffect(
          dotColor:  colorWhite,
          activeDotColor: colorTheme,
          dotWidth: 6,
          dotHeight: 6,
        ),
      ),
    );

    return Column(
        children: [
          CarouselSlider.builder(
            itemCount: urlImages.length, 
            itemBuilder: (context, index, realIndex) {
              final urlImage = urlImages[index];
              return buildImage(urlImage, index);
            }, 
            options: CarouselOptions(
              height: 250,
              viewportFraction: 1,
              autoPlay: true,
              pageSnapping: true,
              onPageChanged: (index, reason) => 
                setState(() => activeIndex = index),
            )
          ),
          buildPager(),
        ],
      );
  }
}

class Banner3colHomepage extends StatefulWidget {
  const Banner3colHomepage({super.key});

  @override
  State<Banner3colHomepage> createState() => _Banner3colHomepageState();
}

class _Banner3colHomepageState extends State<Banner3colHomepage> {
  int activeIndex = 0;

  final urlImages =[
    "assets/images/home-banner/banner1.png",
    "assets/images/home-banner/banner2.png",
    "assets/images/home-banner/banner3.png",
  ];

  @override
  Widget build(BuildContext context) {
    Widget buildImage(String urlImage, int index) => Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        // child: Image.asset(urlImage),
        decoration: new BoxDecoration(
            image: DecorationImage(
                image: new AssetImage(urlImage),
                fit: BoxFit.cover
            ),
        ),
      ),
    );

    return Container(
      padding: EdgeInsets.only(left: 20),
      margin: EdgeInsets.symmetric(vertical: 20),
      child: CarouselSlider.builder(
        itemCount: urlImages.length, 
        itemBuilder: (context, index, realIndex) {
          final urlImage = urlImages[index];
          return buildImage(urlImage, index);
        }, 
        options: CarouselOptions(
          height: 140,
          viewportFraction: 0.75,
          pageSnapping: true,
          padEnds: false,
          onPageChanged: (index, reason) => 
            setState(() => activeIndex = index),
        )
      ),
    );
  }
}