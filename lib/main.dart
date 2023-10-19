import 'package:flutter/material.dart';
import 'package:taxiliz/config/utils/constant.dart';
import 'package:taxiliz/presentation/screen/pages/home/home_screen.dart';
import 'package:taxiliz/presentation/screen/pages/splash/export_splash.dart';
import 'package:taxiliz/presentation/screen/widget/utils/nav_bar/nav_bar.dart';

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
      home: NavigationBottomBar(),
    );
  }
}
