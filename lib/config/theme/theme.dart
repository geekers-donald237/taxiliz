import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constant.dart';
import '../utils/localfile.dart';

/****************** COLOR DEFINITION ***************/

Color kOtherColor = Color.fromRGBO(255, 255, 255, 1);
MaterialColor kDefaultColor = Colors.blueGrey;
Color kPrimaryColor = Color.fromARGB(255, 166, 179, 200);
Color kSecondaryColor = Color(0xFF97A6BF);
Color kWhite = Colors.white;
Color kTransparent = Colors.transparent;
Color kBlack = Color(0xFF262626);
Color AppbarBackgroundColor = kWhite;
Color defaultIconColor = kBlack;

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

final defaultDrawerPadding = EdgeInsets.only(
  left: drawerVerticalPadding,
  top: drawerHorizontalPadding,
);

Decoration globalGradientDecoration = BoxDecoration(gradient: gradient);

final cardPadding = EdgeInsets.all(defaultSpace);

/****************** CUSTOM TEXT STYLE ***************/
class AppStyle {
  static TextStyle AppbarTextStyle() {
    return TextStyle(
      color: kBlack,
      fontSize: fontsize_20,
      fontWeight: fontWeight_500,
    );
  }

  static TextStyle drawerTitleStyle() {
    return TextStyle(
      color: Color(0xFF262626),
      fontSize: fontsize_15,
      fontWeight: fontWeight_500,
      height: 0,
    );
  }

  static TextStyle drawersubtitleStyle() {
    return TextStyle(
      color: Color(0xFF262626),
      fontSize: fontsize_10,
      fontWeight: fontWeight_500,
      height: 0,
    );
  }

  static TextStyle homeDefaultBlockText() {
    return TextStyle(
      color: Color(0xFF262626),
      fontSize: 16,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
      height: 0,
      letterSpacing: -0.32,
    );
  }

  static TextStyle cardViewLeaseDetailsTextStyle = TextStyle(
    color: Color(0xFF262626),
    fontSize: fontsize_10,
    fontWeight: fontWeight_500,
    height: 0.10,
  );

  static TextStyle btnTextStyle(Color color) {
    return TextStyle(
      color: color,
      fontSize: fontsize_20,
      fontWeight: fontWeight_400,
      height: 0,
      letterSpacing: -0.32,
    );
  }

  static TextStyle dateStyle = TextStyle(
    color: kBlack,
    fontSize: fontsize_10,
    fontWeight: fontWeight_400,
    height: 1.0,
  );

  static TextStyle notifCardTitle = TextStyle(
    color: kBlack,
    fontSize: fontsize_15,
    fontWeight: fontWeight_400,
    height: 1.0,
  );

  static TextStyle notifCardDescription = TextStyle(
    color: kBlack,
    fontSize: fontsize_10,
    fontWeight: fontWeight_400,
  );

  static TextStyle viewMore = TextStyle(
    color: kBlack,
    fontSize: fontsize_10,
    fontWeight: fontWeight_bold,
    height: 1.0,
  );
}
