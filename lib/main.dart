import 'package:flutter/material.dart';

import 'ui/pages/login.dart';
import 'ui/pages/product.dart';
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
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '$SplashScreen',
      routes: {
        '$SplashScreen': (_) => const SplashScreen(),
        '$StartPage': (_) => const StartPage(),
        '$ProductPage': (_) => const ProductPage(),
        '$LoginPage': (_) => const LoginPage(),
      },
    );
  }
}
