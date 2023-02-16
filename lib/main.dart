import 'package:app_demo/ui/pages/product.dart';
import 'package:app_demo/ui/pages/start.dart';
import 'package:app_demo/ui/pages/splash.dart';
import 'package:app_demo/ui/theme.dart';
import 'package:flutter/material.dart';

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
        fontFamily: 'Quicksand',
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '$SplashScreen',
      routes: {
        '$SplashScreen': (_) => const SplashScreen(),
        '$StartPage': (_) => const StartPage(),
        '$ProductPage': (_) => const ProductPage(),
      },
    );
  }
}
