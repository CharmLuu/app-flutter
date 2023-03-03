

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../pages/start.dart';
import '../theme.dart';

class HeaderType2 extends StatelessWidget {
  final String data;
  const HeaderType2({Key? key, required this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.w,
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: colorWhite,
        boxShadow: [
          BoxShadow(
            color: colorBlack.withOpacity(0.1),
            blurRadius: 10,
              offset: Offset(-4,-5),
          ),
        ],
      ),
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: SvgPicture.asset('assets/images/icons/back-icon.svg')
            )
          ),
          Flexible(
            flex: 8,
            fit: FlexFit.tight,
            child: Text(
              data,
              style: PrimaryFont.bold(16),
              textAlign: TextAlign.center,
            ),
          ),
          Flexible(
            flex: 1,
            child: InkWell(
              onTap: (){
                Navigator.of(context).pushNamed('$StartPage');
              },
              child: Image.asset('assets/images/icons/home.png', width: 30, height: 30,)
            )
          )
        ],
      ),
    );
  }
}