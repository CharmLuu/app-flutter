import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProductMedia extends StatefulWidget {
  const ProductMedia({super.key});

  @override
  State<ProductMedia> createState() => _ProductMediaState();
}

class _ProductMediaState extends State<ProductMedia> {
  int activeIndex = 0;
  final urlImages = [
    "https://product.hstatic.net/200000382533/product/3_e1b095977e944acc873835fab45634ae_large.jpg",
    "https://product.hstatic.net/200000382533/product/1_4e5c52f9b12646898ff90d3a6cdc0326_large.jpg",
    "https://product.hstatic.net/200000382533/product/2_95e936889c974490bd0912866cd4abc9_large.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    Widget buildImage(String urlImage, int index) => Container(
          // child: Image.network(urlImage),
          decoration: BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(urlImage),
            fit: BoxFit.contain,
          )),
        );

    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          CarouselSlider.builder(
              itemCount: urlImages.length,
              itemBuilder: (context, index, realIndex) {
                final urlImage = urlImages[index];
                return buildImage(urlImage, index);
              },
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height * 0.5,
                viewportFraction: 1,
                // autoPlay: true,
                pageSnapping: true,
                onPageChanged: (index, reason) =>
                    setState(() => activeIndex = index),
              )),
        ],
      ),
    );
  }
}
