import 'package:flutter/material.dart';

import '../../theme.dart';

class CustomTitleHomepage extends StatelessWidget {
  final String data;
  const CustomTitleHomepage({Key? key, required this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 38,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg-topsearch.png"),
          fit: BoxFit.cover,
          alignment: Alignment.topLeft,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          data.toUpperCase(),
          style: PrimaryFont.bold(16).copyWith(
            color: colorWhite,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}