import 'package:flutter/material.dart';
import 'package:shamo/pages/login.dart';
import 'package:shamo/pages/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/login': (context) => Login(),
      },
    );
  }
}
