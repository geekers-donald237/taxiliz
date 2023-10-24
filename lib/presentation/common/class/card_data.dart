import '../../../config/utils/localfile.dart';

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
        "Lorem ipsum dolor sit amet consectetur. Vulputate aliquam sit natoque amet senect  usnibh at nascetur. Facilisis amet noegesta   .",
    imagePath: Localfiles.cardcar1,
  ),
  CardData(
    title: "Car Name",
    subtitle:
        "Lorem ipsum dolor sit amet consectetur.   Vulputate aliquam sit natoque amet senect  usnibh at nascetur. Facilisis amet noegesta   .",
    imagePath: Localfiles.cardcar2,
  ),
  CardData(
    title: "Car Name",
    subtitle:
        "Lorem ipsum dolor sit amet consectetur.   Vulputate aliquam sit natoque amet senect  usnibh at nascetur. Facilisis amet noegesta   .",
    imagePath: Localfiles.cardcar3,
  ),
  CardData(
    title: "Car Name",
    subtitle:
        "Lorem ipsum dolor sit amet consectetur.   Vulputate aliquam sit natoque amet senect  usnibh at nascetur. Facilisis amet noegesta   .",
    imagePath: Localfiles.cardcar4,
  ),
];
