import 'package:app_demo/ui/components/header.dart';
import 'package:app_demo/ui/components/text_field.dart';
import 'package:app_demo/ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Header(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ThemeTextField(data: 'Tên'),
                  DatePickerField(title: 'Ngày sinh'),
                  EmailField(),
                  FormFieldTel(), 
                  PasswordField(data: 'Mật khẩu'),
                  PasswordField(data: 'Xác nhận mật khẩu'),
                  ElevatedButton(
                    onPressed: () {}, 
                    child: Text(
                      'Đăng ký',
                      style: PrimaryFont.bold(16),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: colorTheme,
                      fixedSize: Size(context.w - 40, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 30),
                    child: const Divider(
                      height: 1,
                      color: colorGreyLight2,
                      thickness: 1,
                      // indent: 20,
                      // endIndent: 20,
                    ),
                  ), 
                  LoginWithSocial(),
                ],
              ).p(),
            )
          )
          
        ])
      ),
    );
  }
}

class LoginWithSocial extends StatelessWidget {
  const LoginWithSocial({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 15),
          child: Text('Đăng nhập bằng tài khoản xã hội của bạn')
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Image.asset('assets/images/icons/gg.png'),
              )
            ),
            Flexible(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Image.asset('assets/images/icons/fb.png'),
              )
            ),
          ],
        )
      ],
    );
  }
}