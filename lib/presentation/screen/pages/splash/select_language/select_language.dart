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
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Language Selection',
                        style: CustomTextStyle(textColor: kBlack).customText),
                    SizedBox(
                      height: defaultPadding * 2,
                    ),
                    Container(
                        child: Container(
                      width: customSelectLanguageWidth,
                      height: customSelectLanguageHeight,
                      decoration: BoxDecoration(
                        color: kWhite,
                        borderRadius: BorderRadius.circular(defaultPadding),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Sélectionner la langue',
                              style: CustomTextStyle(textColor: kBlack)
                                  .customText),
                          InkWell(
                            onTap: () {
                              showSelectLanguageDialog(context);
                            },
                            child: Icon(
                              Icons.arrow_drop_down,
                            ),
                          ),
                        ],
                      ),
                    )),
                  ],
                ),
                SizedBox(
                  height: defaultPadding,
                ),
                customButton('Continue', true)
              ],
            ),
          );
        }),
      ),
    );
  }
}
