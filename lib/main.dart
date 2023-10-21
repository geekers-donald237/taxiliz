import 'package:flutter/material.dart';
import 'package:taxiliz/config/utils/constant.dart';
import 'package:taxiliz/presentation/screen/pages/auth/forget_pwd.dart';
import 'package:taxiliz/presentation/screen/pages/auth/login.dart';
import 'package:taxiliz/presentation/screen/pages/auth/update_password.dart';
import 'package:taxiliz/presentation/screen/pages/auth/verification_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TaxiLiz',
      theme: ThemeData(fontFamily: defaultFontFamily),
      debugShowCheckedModeBanner: false,
      home: VerificationScreen(),
    );
  }
}
