import 'package:flutter/material.dart';
import 'package:taxiliz/config/theme/theme.dart';
import 'package:taxiliz/presentation/screen/pages/splash/login_or_register/login_or_signup_screen.dart';
import 'package:taxiliz/presentation/screen/pages/splash/select_language/select_language.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TaxiLiz',
      theme: ThemeData(
        primarySwatch: kDefaultColor,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginOrSignupScreen(),
    );
  }
}
