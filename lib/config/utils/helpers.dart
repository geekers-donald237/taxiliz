import 'package:country_flags/country_flags.dart';
import 'package:taxiliz/presentation/screen/widget/export_widget.dart';

import '../theme/theme.dart';
import 'export_utils.dart';

void showSelectLanguageDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return SimpleDialog(
        children: [
          SimpleDialogOption(
            onPressed: () {
              Navigator.pop(context);
              // Gérer la sélection de la langue (par exemple, français)
            },
            child: Row(
              children: [
                Container(
                  width: 27,
                  height: 18,
                  child: CountryFlag.fromLanguageCode('fr'),
                ),
                SizedBox(width: defaultSpace),
                Text(
                  'Français',
                  style: TextStyle(
                    color: Color(0xFF262626),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 0.5,
            color: kBlack,
          ),
          SimpleDialogOption(
            onPressed: () {
              Navigator.pop(context);
              // Gérer la sélection de la langue (par exemple, anglais)
            },
            child: Row(
              children: [
                Container(
                  width: flagSizeWith,
                  height: flagSizeHeight,
                  child: CountryFlag.fromLanguageCode('en'),
                ),
                SizedBox(width: 10),
                Text(
                  'English',
                  style: TextStyle(
                    color: Color(0xFF262626),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    },
  );
}

showConfirmationDialog(BuildContext context, String title, String subtitle,
    VoidCallback onYesPressed) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(title, textAlign: TextAlign.center),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF262626),
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                height: 1.33,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                    child: customDialogConfirmationBtn(
                  'No',
                  false,
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                )),
                const SizedBox(width: 20),
                Expanded(
                    child: customDialogConfirmationBtn('Yes', true,
                        onTap: onYesPressed)),
              ],
            ),
          ],
        ),
      );
    },
  );
}

class CardData {
  final String title;
  final String subtitle;
  final String imagePath;

  CardData({
    required this.title,
    required this.subtitle,
    required this.imagePath,
  });
}
