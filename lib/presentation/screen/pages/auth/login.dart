import 'package:taxiliz/config/utils/export_utils.dart';

import '../../../../config/theme/theme.dart';
import '../../widget/utils/helpers_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: globalGradientDecoration,
        child: LayoutBuilder(builder: (context, constraints) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                buildContainerWithImage(Localfiles.logo),
                const SizedBox(height: defaultSpace * 2),
                BuildTextInputForm(false, "Login", loginScreenInput),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Don’t have an account?',
                        style: TextStyle(
                          color: Color(0xFF262626),
                          fontSize: 10,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: ' Sign Up',
                        style: TextStyle(
                          color: Color(0xFF262626),
                          fontSize: 10,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
