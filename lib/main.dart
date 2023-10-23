
import 'package:taxiliz/config/utils/export_utils.dart';
import 'package:taxiliz/presentation/screen/pages/splash/splash_screen.dart';

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
      home: SpashScreen(),
    );
  }
}
