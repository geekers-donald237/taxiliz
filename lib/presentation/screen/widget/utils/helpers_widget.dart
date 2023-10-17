import '../../../../config/theme/theme.dart';
import '../../../../config/utils/export_utils.dart';

Container buildContainerWithImage() {
  return Container(
    width: splashLogoContainerWith,
    height: splashLogoContainerHeight,
    decoration: BoxDecoration(image: decorationImage),
  );
}


Widget customButton(String text, bool isInverted) {
  final textColor = isInverted ? kWhite : kBlack;
  final bgColor = isInverted ? kBlack : kTransparent;

  return Container(
    width: customButtonWidth,
    height: customButtonHeight,
    decoration: BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.circular(defaultPadding),
      border: Border.all(width: customButtonBorderWidth, color: kBlack),
    ),
    child: Center(
      child:
          Text(text, style: CustomTextStyle(textColor: textColor).customText),
    ),
  );
}
