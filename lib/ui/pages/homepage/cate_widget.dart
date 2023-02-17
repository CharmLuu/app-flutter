import 'package:flutter/material.dart';

import '../../components/brand_slider.dart';
import '../../theme.dart';

final List<String> subcates = <String>[
  'Mẹ bầu', 
  '0-1T', 
  '1-2T',
  'Mẹ bầu', 
  '0-1T', 
  '1-2T',
];

class CateHomepage extends StatelessWidget {
  const CateHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30),
      child: Column(
        children: [
          Text(
            'Sữa bột bé thích',
            style: PrimaryFont.fontSecond(16).copyWith(
              color: colorTheme
            ),
          ),
          Container(
            height: 55,
            padding: EdgeInsets.only(left: 20, top: 20),
            child: Expanded (
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                // padding: const EdgeInsets.all(8),
                itemCount: subcates.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(right: 50),
                    child: Text(
                      '${subcates[index]}',
                      style: PrimaryFont.semi(14)
                    ),
                  );
                }
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            child: BrandSlider()
          ),
        ],
      ),
    );
  }
}