import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../pages/start.dart';
import '../theme.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
     Widget searchSection = TextField(
      textAlignVertical: TextAlignVertical.center,
      style: TextStyle(
        color: colorBlack,
      ),
      decoration: InputDecoration(  
        filled: true,
        fillColor: colorWhite,
        contentPadding: EdgeInsets.symmetric(horizontal: 20),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: colorWhite, width: 0),
            borderRadius: BorderRadius.circular(20.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colorWhite, width: 2.0),
          borderRadius: BorderRadius.circular(20.0),
        ),
        hintText: 'Tìm kiếm sản phẩm',
        hintStyle: TextStyle(
          color: colorBlack,
          fontSize: 14,
        ),
        suffixIcon: Align(
            widthFactor: 1.0,
            heightFactor: 1.0,
            child: SvgPicture.asset('assets/images/icons/search.svg'),
          ),
        ), 
    );

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
      height: 60,
      color: colorTheme,
      // alignment: Alignment.center,
      child: Row(children: [
        Expanded(
          flex: 1,
          child: InkWell(
            onTap: (){
              Navigator.of(context).pushNamed('$StartPage');
            },
            child: SvgPicture.asset('assets/images/logo_main.svg')
          )
        ),
        Expanded(
          flex: 8,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: searchSection,
          ),
        ),
        Expanded(
          flex: 1,
          child: SvgPicture.asset('assets/images/icons/cart.svg')
        ),
      ]),
      
    );
  }
}