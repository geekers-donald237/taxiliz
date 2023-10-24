import 'package:taxiliz/config/utils/export_utils.dart';
import '../../widget/utils/reusable_other.dart';
import '../../widget/utils/main_view.dart';

class LoginOrSignupScreen extends StatefulWidget {
  const LoginOrSignupScreen({super.key});

  @override
  State<LoginOrSignupScreen> createState() => _LoginOrSignupScreenState();
}

class _LoginOrSignupScreenState extends State<LoginOrSignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: customAppbar(''),
      body: loginOrRegisterMainView(context),
    );
  }
}
