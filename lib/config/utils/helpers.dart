import 'package:country_flags/country_flags.dart';

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
                SizedBox(width: defaultPadding),
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
