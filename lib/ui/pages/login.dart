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
        child: Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 30),
          child: Column(
            children: [
              Flexible(
                flex: 2,
                child: Center(child: SvgPicture.asset('assets/images/icons/logo.svg'))
              ),
              Expanded(
                flex: 6,
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
                      TabFormLogin(),
                      FormLoginContainer(),                
                    ],
                  )
                )
              ),
              Flexible(
                flex: 2,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Bằng việc Đăng Nhập / Tạo Tài Khoản, bạn đã đồng ý với Điều khoản & Chính sách bảo vệ cá nhân của BBB',
                    textAlign: TextAlign.center,
                  )
                )
              ),
            ],
          )
          .pxBase(),
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
  final List<Tab> topTabs = <Tab>[
    Tab(
      child: Row(
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
    Tab(
      child: Row(
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
  ];

  @override
  void initState() {
   super.initState();

   _controller = TabController(
      vsync: this, 
      length: topTabs.length,
      initialIndex: 0,
    );
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
          tabs: topTabs,
          labelColor: colorTheme,
          unselectedLabelColor: colorBlack,
          indicatorColor: Colors.transparent
        ),
        Container(
          height: 100,
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