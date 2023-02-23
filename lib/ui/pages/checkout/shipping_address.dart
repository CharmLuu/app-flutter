import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../components/dropdown.dart';
import '../../components/modal_title.dart';
import '../../components/text_field.dart';
import '../../theme.dart';
import '../login.dart';

class ShippingAddress extends StatelessWidget {
  const ShippingAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  child: SvgPicture.asset('assets/images/icons/icon-location.svg'),
                ),
                Container(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    'Thông tin khách hàng',
                    style: PrimaryFont.semi(16),
                  ),
                )
              ],
            ),
          ),

          TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: Size.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          onPressed: () => showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              insetPadding: EdgeInsets.zero,
              contentPadding: EdgeInsets.zero,
              backgroundColor: Colors.transparent,
              content: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    color: colorWhite,
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    child: Column(
                      children: [
                        AlertDialogTitle(data: 'Đăng nhập'),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: FormLoginContainer()
                        ),
                      ],
                    )
                  ), 
                ],
              ),
            ),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            margin: EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              border: Border.all(color: colorTheme),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              'Đăng nhập',
              style: TextStyle(
                color: colorTheme,
                fontWeight: FontWeight.w600,
              ),
            )
          ),
        ),
        FormCustomerInfo(),
        ],
      ),
    );
  }
}

class FormCustomerInfo extends StatelessWidget {
  FormCustomerInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        EmailField(),
        ThemeTextField(data: 'Tên'),
        DropDownOption(listCountry: []),
        
      ],
    );
  }
}