
import '../../../config/utils/export_utils.dart';
import 'bottom_bar/nav_bar.dart';

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