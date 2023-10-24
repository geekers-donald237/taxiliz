import 'package:taxiliz/config/utils/export_utils.dart';
import 'package:taxiliz/presentation/screen/widget/export_widget.dart';

import '../theme/theme.dart';

Widget buildLanguageOption(
    String languageCode, String languageName, BuildContext context) {
  return SimpleDialogOption(
    onPressed: () {
      Navigator.pop(context);
    },
    child: Row(
      children: [
        buildFlagWidget(languageCode),
        SizedBox(width: defaultSpacing),
        Text(
          languageName,
        ),
      ],
    ),
  );
}

void showSelectLanguageDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return SimpleDialog(
        children: [
          buildLanguageOption('fr', 'Français', context),
          Divider(
            thickness: thicknessValue_05,
            color: AppStyle.kBlack,
          ),
          buildLanguageOption('en', 'English', context),
        ],
      );
    },
  );
}

void showConfirmationDialog(BuildContext context, String title, String subtitle,
    VoidCallback onYesTap) {
  showDialog(
    context: context,
    builder: (context) {
      Widget cancelButton = customDialogConfirmationBtn(
        'No',
        false,
        onTap: () {
          Navigator.of(context).pop();
        },
      );

      Widget confirmButton =
          customDialogConfirmationBtn('Yes', true, onTap: onYesTap);

      return AlertDialog(
        title: Text(title, textAlign: TextAlign.center),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              subtitle,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: doubleSpacing),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(child: cancelButton),
                SizedBox(width: doubleSpacing),
                Expanded(child: confirmButton),
              ],
            ),
          ],
        ),
      );
    },
  );
}

