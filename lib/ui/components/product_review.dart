import 'package:app_demo/ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductReview extends StatelessWidget {
  const ProductReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
            width: 125,
            child: Row(
              children: const [
                Icon(
                  FontAwesomeIcons.solidStar,
                  color: colorGrey1,
                  size: 20,
                ),
                SizedBox(width: 5),
                Icon(
                  FontAwesomeIcons.solidStar,
                  color: colorGrey1,
                  size: 20,
                ),
                SizedBox(width: 5),
                Icon(
                  FontAwesomeIcons.solidStar,
                  color: colorGrey1,
                  size: 20,
                ),
                SizedBox(width: 5),
                Icon(
                  FontAwesomeIcons.solidStar,
                  color: colorGrey1,
                  size: 20,
                ),
                SizedBox(width: 5),
                Icon(
                  FontAwesomeIcons.solidStar,
                  color: colorGrey1,
                  size: 20,
                ),
              ],
            )),
        Positioned(
            top: 0,
            left: 0,
            // width: 125,
            child: ClipRect(
              child: Align(
                alignment: Alignment.topLeft,
                widthFactor: .8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Icon(
                      FontAwesomeIcons.solidStar,
                      color: colorTheme,
                      size: 20,
                    ),
                    SizedBox(width: 5),
                    Icon(
                      FontAwesomeIcons.solidStar,
                      color: colorTheme,
                      size: 20,
                    ),
                    SizedBox(width: 5),
                    Icon(
                      FontAwesomeIcons.solidStar,
                      color: colorTheme,
                      size: 20,
                    ),
                    SizedBox(width: 5),
                    Icon(
                      FontAwesomeIcons.solidStar,
                      color: colorTheme,
                      size: 20,
                    ),
                    SizedBox(width: 5),
                    Icon(
                      FontAwesomeIcons.solidStar,
                      color: colorTheme,
                      size: 20,
                    ),
                  ],
                ),
              ),
            )),
      ],
    );
  }
}
