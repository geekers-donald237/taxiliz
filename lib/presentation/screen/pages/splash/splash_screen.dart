import 'dart:async';

import 'package:taxiliz/config/routes/routes_name.dart';

import 'package:taxiliz/config/utils/export_utils.dart';
import '../../widget/utils/helpers_widget.dart';

class SpashScreen extends StatefulWidget {
  const SpashScreen({super.key});
  @override
  State<SpashScreen> createState() => _SpashScreenState();
}

class _SpashScreenState extends State<SpashScreen> {
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    displaySplashElementWithTime();
  }

  void displaySplashElementWithTime() {
    Timer(Duration(seconds: defaultTimer), () {
      setState(() {
        isLoading = false;
      });
      NavigationServices(context).gotoHomeMainPage();
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: customAppbar(''),
      body: splashView(isLoading),
    );
  }
}
