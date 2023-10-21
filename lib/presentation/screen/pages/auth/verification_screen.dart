import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:taxiliz/config/utils/export_utils.dart';
import 'package:taxiliz/presentation/screen/widget/utils/helpers_widget.dart';

import '../../../../config/theme/theme.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(verificationAppbarTitle),
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
                      'Please Enter the 4 Digit code sent to\nyour Email',
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
                BuildTextInputForm(false, "Continue", optTextFields),
                
              ],
            ),
          );
        }),
      ),
    );
  }
}
