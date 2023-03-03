import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'ui/pages/account/account_edit.dart';
import 'ui/pages/account/order.dart';
import 'ui/pages/account/wishlist.dart';
import 'ui/pages/checkout.dart';
import 'ui/pages/login.dart';
import 'ui/pages/order_detail.dart';
import 'ui/pages/product.dart';
import 'ui/pages/register.dart';
import 'ui/pages/splash.dart';
import 'ui/pages/start.dart';
import 'ui/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: colorTheme,
        fontFamily: 'Nunito',
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: colorTheme,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            // minimumSize: Size.fromHeight(40),
          )
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            primary: colorTheme,
            side: BorderSide(color: colorTheme),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            // minimumSize: Size.fromHeight(40)
          )
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: colorTheme
          )
        )
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '$SplashScreen',
      routes: {
        '$SplashScreen': (_) => const SplashScreen(),
        '$StartPage': (_) => const StartPage(),
        '$ProductPage': (_) => const ProductPage(),
        '$LoginPage': (_) => const LoginPage(),
        '$Register': (_) => const Register(),
        '$CheckoutPage': (_) => const CheckoutPage(),
        '$CustomerAccountEdit': (_) => const CustomerAccountEdit(),
        '$WishlistPage': (_) =>  WishlistPage(),
        '$OrderPage': (_) =>  OrderPage(),
        '$OrderDetailPage': (_) =>  OrderDetailPage(),
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () => Navigator.push(
        context,
          MaterialPageRoute(builder: (context) => SplashSlider()
        ),
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF8E97FD),
      body: SafeArea(
        child: Container(
          width: context.w,
          height: context.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/images/bg-splash.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/images/logo.svg'),
            ],
          ),
        ),
      ),
    );
  }
}
