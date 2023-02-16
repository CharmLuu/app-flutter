import 'package:flutter/material.dart';

const colorTheme = Color(0xFFE51A83);
const colorSecond = Color(0xFFFCF065);
const colorWhite = Color(0xFFFFFFFF);
const colorBlack = Color(0xFF000000);
const colorGrey1 = Color(0xFFBBBBBB);
const colorGreyLight1 = Color(0xFFEEEEEE);
const colorGreyLight2 = Color(0xFFD9D9D9);

class PrimaryFont {
  static TextStyle fontSize(double size) {
    return TextStyle(
      fontSize: size,
    );
  }

  static TextStyle bold(double size) {
    return TextStyle(
      fontSize: size,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle fontSecond(double size) {
    return TextStyle(
      fontSize: size,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w800,
      fontStyle: FontStyle.italic,
    );
  }
}

extension GetOrientation on BuildContext {
  Orientation get orientation => MediaQuery.of(this).orientation;
}
