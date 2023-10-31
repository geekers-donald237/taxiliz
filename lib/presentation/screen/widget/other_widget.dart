
import 'package:taxiliz/presentation/screen/widget/utils/reusable_other.dart';

import '../../../config/theme/theme.dart';
import '../../../config/utils/export_utils.dart';

class CommonText extends StatelessWidget {
  final String text;

  const CommonText({required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          textAlign: TextAlign.center,
          style: AppStyle.notifCardTitle,
        )
      ],
    );
  }
}

Widget commonFormView(
  BuildContext context, 
  String imagePath, 
  String titleText, 
  String buttonText, 
  List<Widget> inputFields, 
  double spacing
) {
  return createReusableContainer(
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildContainerWithImage(imagePath),
          const SizedBox(height: defaultSpacing),
          CommonText(text: titleText),
          BuildTextInputForm(false, buttonText, inputFields, context, 40),
        ],
      ),
    ),
  );
}


class TextAreaWithLabel extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final bool labelPositionIscentered;

  TextAreaWithLabel(
      {required this.labelText,
      required this.controller,
      required this.labelPositionIscentered});

  @override
  Widget build(BuildContext context) {
    MainAxisAlignment myAligment = labelPositionIscentered
        ? MainAxisAlignment.center
        : MainAxisAlignment.start;
    return Container(
      margin: EdgeInsets.only(top: tripleSpacing),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: myAligment,
            children: [
              Text(
                labelText,
                style: TextStyle(
                  fontSize: fontsize_15,
                  fontWeight: fontWeight_bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          TextField(
            controller: controller,
            maxLines: 5, // Vous pouvez ajuster le nombre de lignes souhaité
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: defaultBorderRadius,
                borderSide: BorderSide(
                    color: AppStyle.kBlack, width: customBorderWidth),
              ), // Bordure de la zone de texte
              contentPadding:
                  EdgeInsets.all(defaultSpacing), // Rembourrage interne
            ),
          ),
        ],
      ),
    );
  }
}

