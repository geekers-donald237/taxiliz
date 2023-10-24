
import 'package:taxiliz/config/utils/export_utils.dart';
import 'package:taxiliz/presentation/screen/pages/auth/register.dart';
import 'package:taxiliz/presentation/screen/pages/home/add_car_lease.dart';

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
      home: AddCarLease(),
    );
  }
}
