import 'package:app_demo/ui/components/header.dart';
import 'package:app_demo/ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/text_field.dart';
import 'register.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Header(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Chào Ba mẹ,'),
                    Padding(
                      padding: const EdgeInsets.only(top: 3, bottom: 10),
                      child: RichText(
                        text: TextSpan(
                          text: 'Vui lòng Đăng nhập hoặc ',
                          style: PrimaryFont.fontSize(14).copyWith(
                            color: colorBlack
                          ),
                          children: [
                            WidgetSpan(
                              child: InkWell(
                                onTap: (){
                                  Navigator.of(context).pushNamed('$Register');
                                },
                                child: Text(
                                  "Tạo tài khoản",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    FormLoginContainer(),   
                    Container(
                      padding: EdgeInsets.only(top: 30),
                      child: Text(
                        'Bằng việc Đăng Nhập / Tạo Tài Khoản, bạn đã đồng ý với Điều khoản & Chính sách bảo vệ cá nhân của BBB',
                        textAlign: TextAlign.center,
                      ),
                    )             
                  ],
                )
              ).p(),
            ),
          ],
        )
      )
    );
  }
}

class FormLoginContainer extends StatelessWidget {
  const FormLoginContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TabFormLogin(),
          ElevatedButton(
            onPressed: () {}, 
            child: Text(
              'Đăng nhập',
              style: PrimaryFont.bold(16),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: colorTheme,
              fixedSize: Size(context.w - 40, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ) ,
          Container(
            margin: const EdgeInsets.symmetric(vertical: 30),
            child: const Divider(
              height: 1,
              color: colorGreyLight2,
              thickness: 1,
            ),
          ), 
          LoginWithSocial(),
        ],
      ),
    );
  }
}

class TabFormLogin extends StatefulWidget {
  const TabFormLogin({super.key});

  @override
  State<TabFormLogin> createState() => _TabFormLoginState();
}

class _TabFormLoginState extends State<TabFormLogin> with SingleTickerProviderStateMixin {
  late TabController _controller;
  int activeTabIndex = 1;

  @override
  void initState() {
   super.initState();

   _controller = TabController(
      vsync: this, 
      length: 2,
      initialIndex: 0,
    );
    _controller.addListener(() {
      setState(() {
        activeTabIndex = _controller.index;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        TabBar(
          controller: _controller,
          tabs: [
            Tab(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                child: FittedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.phone,
                        size: 16,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          'Số điện thoại',
                          style: PrimaryFont.fontSize(14),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Tab(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                child: FittedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.envelope,
                        size: 16,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          'Email',
                          style: PrimaryFont.fontSize(14),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
          labelColor: colorTheme,
          unselectedLabelColor: colorBlack,
          indicatorColor: Colors.transparent,
          indicator: BoxDecoration(
            border: Border.all(color: colorTheme),
            borderRadius: BorderRadius.circular(20),
            // color: colorSecond
          ),
          indicatorPadding: EdgeInsets.symmetric(vertical: 7, horizontal: 10),
          padding: EdgeInsets.zero,
          labelPadding: EdgeInsets.zero,
          // indicatorWeight: 4,
        ),
        Container(
          margin: EdgeInsets.only(top: 15),
          height: 120,
          child: TabBarView(
            controller: _controller,
            children: [
              TabFormPhone(),
              TabFormEmail(),
            ]
          ),
        ),
      ],
    );
  }
}

class TabFormPhone extends StatelessWidget {
  const TabFormPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FormFieldTel(),
        PasswordField(data: 'Mật khẩu',)
      ],
    );
  }
}

class TabFormEmail extends StatelessWidget {
  const TabFormEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        EmailField(),
        PasswordField(data: 'Mật khẩu',)
      ],
    );
  }
}