


import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../components/modal_title.dart';
import '../../components/page_title.dart';
import '../../theme.dart';
import '../login.dart';

final List<String> city = <String>[
  'Hồ Chí Minh',
  'Bình Dương',
  'Đồng Nai',
  'Hà Nội',
  'Đà Nẵng',
  'Long An',
  'Bà Rịa - Vũng Tàu',
  'Cần Thơ',
  'Hồ Chí Minh',
  'Bình Dương',
  'Đồng Nai',
  'Hà Nội',
  'Đà Nẵng',
  'Long An',
  'Bà Rịa - Vũng Tàu',
  'Cần Thơ',
];

class ProductDelivery extends StatelessWidget {
  const ProductDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: colorWhite,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow( 
              color: colorBlack.withOpacity(0.1),
              blurRadius: 10,
              offset: Offset(0, 0),
            )
          ],
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PageSubTitle(data: 'Giao & Nhận'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 3),
                        child: Text(
                          'Siêu thị có hàng',
                          style: PrimaryFont.bold(14).copyWith(
                            color: colorTheme,
                          ),
                        ),
                      ),
                      Icon(
                        FontAwesomeIcons.angleRight,
                        size: 12,
                        color: colorTheme,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.1, 0.5, 0.7, 0.9],
                  colors: [
                    // Colors are easy thanks to Flutter's Colors class.
                    colorSecond.withOpacity(0.6),
                    colorSecond.withOpacity(0.5),
                    colorSecond.withOpacity(0.3),
                    colorSecond.withOpacity(0.1),
                  ],
                )
              ),
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: Size.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  // alignment: Alignment.centerLeft
                ),
                onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    insetPadding: EdgeInsets.zero,
                    contentPadding: EdgeInsets.zero,
                    backgroundColor: Colors.transparent,
                    // elevation: 0.0,
                    // title: Center(child: Text("Modal title")),
                    content: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          color: colorWhite,
                          padding: EdgeInsets.only(top: 15, left: 20, right: 20),
                          child: Column(
                            children: [
                              AlertDialogTitle(data: 'Chọn khu vực nhận hàng'),
                              InkWell(
                                onTap: (){
                                  Navigator.of(context).pushNamed('$LoginPage');
                                },
                                child: RichText(
                                  text: TextSpan(
                                    text: 'hoặc ',
                                    style: DefaultTextStyle.of(context).style,
                                    children: const <TextSpan>[
                                      TextSpan(
                                        text: 'Đăng nhập', 
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: colorTheme
                                        )
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Chọn tỉnh thành',
                                    style: PrimaryFont.bold(15),
                                  )
                                ),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height * 0.6,
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: city.length,
                                  itemBuilder: (BuildContext context, int index) {
                                    return Container(
                                      padding: EdgeInsets.symmetric(vertical: 10),
                                      decoration: BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(color: colorGreyLight2),
                                        ),
                                      ),
                                      child: Text(
                                        '${city[index]}',
                                        style: PrimaryFont.semi(14)
                                      ),
                                    );
                                  }
                                ),
                              )
                            ],
                          )
                        ), 
                      ],
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          height: 18,
                          width: 15,
                          child: SvgPicture.asset('assets/images/icons/icon-location.svg')
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'Chọn địa chỉ nhận hàng',
                            style: TextStyle(
                              color: colorBlack,
                            ),
                          ),
                        )
                      ],
                    ),
                    Text('(Chọn ngay)')
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}