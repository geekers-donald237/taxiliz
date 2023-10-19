import 'package:taxiliz/config/utils/export_utils.dart';
import '../../../../../config/theme/theme.dart';
import '../../../widget/utils/helpers_widget.dart';

class LoginOrSignupScreen extends StatefulWidget {
  const LoginOrSignupScreen({super.key});

  @override
  State<LoginOrSignupScreen> createState() => _LoginOrSignupScreenState();
}

class _LoginOrSignupScreenState extends State<LoginOrSignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: globalGradientDecoration,
        child: LayoutBuilder(builder: (context, constraints) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                buildContainerWithImage(),
                Column(
                  children: [
                    customAuthBtn('Log In', false),
                    SizedBox(height: btnSpaceEscape),
                    customAuthBtn('Sign Up', true)
                  ],
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
