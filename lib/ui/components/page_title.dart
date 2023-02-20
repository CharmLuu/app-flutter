import 'package:flutter/material.dart';

import '../theme.dart';

class PageTitle extends StatelessWidget {
  final String data;
  const PageTitle({Key? key, required this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      decoration: BoxDecoration(
        color: colorSecond,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(60),
          bottomRight: Radius.circular(60)
        )
      ),
      child: Text(
        data.toUpperCase(),
        style: PrimaryFont.fontSecond(16).copyWith(
          color: colorTheme,
        ),
      ),
    );
  }
}

class PageSubTitle extends StatelessWidget {
  final String data;
  const PageSubTitle({Key? key, required this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: PrimaryFont.fontSecond(18),
    );
  }
}