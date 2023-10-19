import 'package:flutter/material.dart';
import 'package:taxiliz/config/theme/theme.dart';
import '../../../../../config/utils/constant.dart';
import '../../../../../config/utils/helpers.dart';
import '../../../widget/utils/helpers_widget.dart';

class LanguageSelection extends StatefulWidget {
  const LanguageSelection({super.key});

  @override
  State<LanguageSelection> createState() => _LanguageSelectionState();
}

class _LanguageSelectionState extends State<LanguageSelection> {
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
                selectLanguageContainer(context),
                SizedBox(
                  height: defaultSpace,
                ),
                customAuthBtn('Continue', true)
              ],
            ),
          );
        }),
      ),
    );
  }
}
