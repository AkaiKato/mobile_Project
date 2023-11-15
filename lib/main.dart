import 'package:flutter/material.dart';
import 'package:mobile_project/pages/FAQ_page.dart';
import 'package:mobile_project/pages/about_us_page.dart';
import 'package:mobile_project/pages/login_page.dart';
import 'dart:io';

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //Сделать и поменять на checkAuth
      home: const LoginPage(),
      routes: {
        '/about_us_page': (context) => const AboutUs(),
        '/faq_page': (context) => const FAQ(),
        '/login_page': (context) => const LoginPage(),
      },
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
