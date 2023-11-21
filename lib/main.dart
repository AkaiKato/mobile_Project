import 'package:flutter/material.dart';
import 'package:mobile_project/data/secure_storage.dart';
import 'package:mobile_project/pages/FAQ_page.dart';
import 'package:mobile_project/pages/about_us_page.dart';
import 'package:mobile_project/pages/home_page.dart';
import 'package:mobile_project/pages/login_page.dart';
import 'dart:io';

int? elmaId;
String? verToken;
Future<void> main() async {
  HttpOverrides.global = MyHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();
  Future<dynamic> ss = SecureStorage().readSecureData('1');
  Future<dynamic> kk = SecureStorage().readSecureData('2');
  String tt = await ss;
  String tVerToken = await kk;
  var temp = int.tryParse(tt);
  if (temp != null) {
    elmaId = temp;
    verToken = tVerToken;
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: elmaId == null
          ? const LoginPage()
          : HomePage(
              elmaId: elmaId as int,
              verToken: verToken as String,
            ),
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
