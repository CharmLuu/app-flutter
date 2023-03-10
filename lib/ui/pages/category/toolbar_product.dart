

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../theme.dart';

const List<String> listToolbar = <String>['Giá tăng dần', 'Giá tăng dần', 'Tên: A-Z', 'Tên: Z-A'];

class ToolbarProduct extends StatefulWidget {
  const ToolbarProduct({super.key});

  @override
  State<ToolbarProduct> createState() => _ToolbarProductState();
}

class _ToolbarProductState extends State<ToolbarProduct> {
  String dropdownValue = listToolbar.first;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(children: [
        Expanded(
          flex: 3,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: colorTheme.withOpacity(0.13)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/images/icons/filter.svg'),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Lọc',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: colorTheme
                    ),
                  ),
                ),
              ],
            ),
          )
        ),
        Expanded(
          flex: 7,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            Flexible(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: FittedBox(
                  child: Text(
                    'Sắp xếp theo',
                    style: PrimaryFont.fontSize(10),
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 7,
              child: Container(
                height: 30,
                padding: EdgeInsets.only(left: 20, right: 35),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: colorGreyLight2),
                  // image: DecorationImage(
                  //   image: AssetImage('assets/images/icons/combo1.png'),
                  //   alignment: Alignment.centerRight,
                  // )
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: 12,
                      right: -15,
                      width: 12,
                      height: 6,
                      child: SvgPicture.asset('assets/images/icons/arrow-up.svg'),
                    ),
                    DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      isExpanded: true,
                      // value: dropdownValue,
                      // icon: ImageIcon.asset('assets/images/icons/combo1.png'),
                      icon: Visibility (visible:false, child: Icon(Icons.arrow_downward)),
                      items: listToolbar.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? value) {
                        setState(() {
                          dropdownValue = value!;
                        });
                      },
                    ),
                                    ),
                  ],
                ),
              ),
            ),
          ]),
        )
      ]),
    );
  }
}