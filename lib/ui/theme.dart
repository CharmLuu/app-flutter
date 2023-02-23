import 'package:flutter/material.dart';

const colorTheme = Color(0xFFE51A83);
const colorSecond = Color(0xFFFCF065);
const colorWhite = Color(0xFFFFFFFF);
const colorBlack = Color(0xFF000000);
const colorGrey1 = Color(0xFFBBBBBB);
const colorGrey2 = Color(0xFF909090);
const colorGreyLight1 = Color(0xFFEEEEEE);
const colorGreyLight2 = Color(0xFFD9D9D9);
const colorGreyLight3 = Color(0xFFF9F9F9);

class PrimaryFont {
  static TextStyle fontSize(double size) {
    return TextStyle(
      fontFamily: 'Nunito',
      fontSize: size,
    );
  }

  static TextStyle bold(double size) {
    return TextStyle(
      fontSize: size,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle semi(double size) {
    return TextStyle(
      fontSize: size,
      fontWeight: FontWeight.w600,
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

extension MediaQueryValues on BuildContext {
  double get w => MediaQuery.of(this).size.width;
  double get h => MediaQuery.of(this).size.height;
}

extension WidgetModifier on Widget {
  Widget p([EdgeInsetsGeometry value = const EdgeInsets.all(20)]) {
    return Padding(
      padding: value,
      child: this,
    );
  }
  Widget pxBase([EdgeInsetsGeometry value = const EdgeInsets.symmetric(horizontal: 20)]) {
    return Padding(
      padding: value,
      child: this,
    );
  }
  Widget pt([EdgeInsetsGeometry value = const EdgeInsets.only(top: 20)]) {
    return Padding(
      padding: value,
      child: this,
    );
  }
  Widget pb([EdgeInsetsGeometry value = const EdgeInsets.only(bottom: 20)]) {
    return Padding(
      padding: value,
      child: this,
    );
  }
  Widget pl([EdgeInsetsGeometry value = const EdgeInsets.only(left: 20)]) {
    return Padding(
      padding: value,
      child: this,
    );
  }
  Widget pr([EdgeInsetsGeometry value = const EdgeInsets.only(right: 20)]) {
    return Padding(
      padding: value,
      child: this,
    );
  }
}
