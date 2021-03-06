import 'package:flutter/material.dart';
import 'package:shamo/pages/detail_chat.dart';
import 'package:shamo/pages/home/main_page.dart';
import 'package:shamo/pages/login.dart';
import 'package:shamo/pages/sign_up.dart';
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
        '/sign-up': (context) => SignUp(),
        '/main-page': (context) => MainPage(),
        '/detail-chat': (context) => DetailChat()
      },
    );
  }
}
