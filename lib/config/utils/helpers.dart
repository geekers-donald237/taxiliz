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

List<CardData> cardList = [
  CardData(
    title: "Car Name",
    subtitle:
        "Lorem ipsum dolor sit amet consectetur. Vulputate aliquam sit natoque amet senect  usnibh at nascetur. Facilisis amet noegesta  lemolestie lacus pretiufusce diam.",
    imagePath: Localfiles.cardcar1,
  ),
  CardData(
    title: "Car Name",
    subtitle:
        "Lorem ipsum dolor sit amet consectetur.   Vulputate aliquam sit natoque amet senect  usnibh at nascetur. Facilisis amet noegesta  lemolestie lacus pretiufusce diam.",
    imagePath: Localfiles.cardcar2,
  ),
  CardData(
    title: "Car Name",
    subtitle:
        "Lorem ipsum dolor sit amet consectetur.   Vulputate aliquam sit natoque amet senect  usnibh at nascetur. Facilisis amet noegesta  lemolestie lacus pretiufusce diam.",
    imagePath: Localfiles.cardcar3,
  ),
  CardData(
    title: "Car Name",
    subtitle:
        "Lorem ipsum dolor sit amet consectetur.   Vulputate aliquam sit natoque amet senect  usnibh at nascetur. Facilisis amet noegesta  lemolestie lacus pretiufusce diam.",
    imagePath: Localfiles.cardcar4,
  ),
];


