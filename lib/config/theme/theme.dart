import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/localfile.dart';

/****************** COLOR DEFINITION ***************/

Color kOtherColor = Color.fromRGBO(255, 255, 255, 1);
MaterialColor kDefaultColor = Colors.blueGrey;
Color kPrimaryColor = Color.fromARGB(255, 166, 179, 200);
Color kSecondaryColor = Color(0xFF97A6BF);
Color kWhite = Colors.white;
Color kTransparent = Colors.transparent;
Color kBlack = Color(0xFF262626);

/****************** BUTTON SIZE DEFINITION ***************/

double customButtonWidth = 250.0;
double customButtonHeight = 50.0;
double customButtonBorderWidth = 1.0;
double customSelectLanguageWidth = 300.0;
double customSelectLanguageHeight = 50.0;

/****************** FONT  DEFINITION ***************/
const String fontW = 'Poppins';
const fontS = FontWeight.w400;

/******************* IMAGE ALIGNEMENT ***************/

Alignment beginAlignment = Alignment(0.0, -1.0);
Alignment endAlignment = Alignment(0.0, 1.0);

/****************** lINEAR GRADIENT ***************/

LinearGradient gradient = LinearGradient(
  begin: beginAlignment,
  end: endAlignment,
  colors: [kPrimaryColor, kSecondaryColor, kWhite],
);

/****************** Image FIT ***************/
BoxFit fill = BoxFit.fill;

DecorationImage decorationImage = DecorationImage(
  image: AssetImage(Localfiles.logo),
  fit: fill,
);

Decoration globalGradientDecoration = BoxDecoration(gradient: gradient);

/****************** CUSTOM TEXT STYLE ***************/

class CustomTextStyle {
  final Color textColor;

  CustomTextStyle({required this.textColor});

  TextStyle get customText {
    
    return TextStyle(
      color: textColor,
      fontSize: 20,
      fontFamily: fontW,
      fontWeight: fontS,
      
    );
  }
}

class CustomLanguageStyle {
  TextStyle get customText {
    return TextStyle(
      color: kBlack,
      fontSize: 15,
      fontFamily: fontW,
      fontWeight: fontS,
      height: 0,
    );
  }
}

final TextStyle resendOTPTitleStyle = TextStyle(
  color: kBlack,
  fontSize: 10,
  fontFamily: fontW,
  fontWeight: fontS,
  height: 0.16,
);

final TextStyle resendOTPTimerStyle = TextStyle(
  color: kBlack,
  fontSize: 12,
    fontFamily: fontW,
  fontWeight: fontS,
  height: 0.11,
);
