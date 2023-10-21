import 'package:taxiliz/presentation/screen/widget/export_widget.dart';

import '../../../../config/theme/theme.dart';
import '../../../../config/utils/export_utils.dart';

class UpdatePassword extends StatelessWidget {
  const UpdatePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(updateAppbarTitle),
      body: Container(
        decoration: globalGradientDecoration,
        child: LayoutBuilder(builder: (context, constraints) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                buildContainerWithImage(Localfiles.forgotPass),
                const SizedBox(height: defaultSpace * 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Create Your New Password',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF262626),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    )
                  ],
                ),
                BuildTextInputForm(false, "Continue", newPassword),
              ],
            ),
          );
        }),
      ),
    );
  }
}
