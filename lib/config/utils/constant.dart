import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:taxiliz/config/routes/routes_name.dart';
import 'package:taxiliz/config/theme/theme.dart';

import '../../presentation/screen/widget/custom_textfield.dart';
import '../../presentation/screen/widget/export_widget.dart';
import 'helpers.dart';
import 'localfile.dart';

const double splashLogoContainerWith = 200.0;
const double splashLogoContainerHeight = 180.0;
const double btnSpaceEscape = 15.0;
const double defaultSpace = 10.0;
const double flagSizeWith = 25.0;
const double flagSizeHeight = 20.0;
const double cardBtnSizeWitdh = 40.0;
const double cardBtnSizeheight = 40.0;
const double dividerThickness = 2.0;
const double noElevation = 0.0;
const double notificationCardHeight = 70.0;
const double inputSeparation = 5.0;

const int defaultTimer = 2;

// Tailles de bouton
const double customAuthBtnWidth = 250.0;
const double customAuthBtnHeight = 50.0;
const double customBorderWidth = 1.5;
const double customSelectLanguageWidth = 300.0;
const double customSelectLanguageHeight = 50.0;

// Polices et styles de texte
const double fontsize_10 = 10;
const double fontsize_15 = 15;
const double fontsize_20 = 20;
const double fontsize_30 = 30;
const String defaultFontFamily = 'Poppins';

// Styles de texte
const FontWeight fontWeight_300 = FontWeight.w300;
const FontWeight fontWeight_400 = FontWeight.w400;
const FontWeight fontWeight_500 = FontWeight.w500;
const FontWeight fontWeight_bold = FontWeight.bold;

// Paramètres d'appbar
const bool centerTitle = true;
const String homeScreenAppbarTitle = "Home Screen";
const String notificationAppBartitle = "Notification";
const String profileAppBartitle = "My Account";
const String viewProfileAppBartitle = "Profile";
const String changePasswordAppbarTitle = "Change Password";
const String helcenterAppbarTitle = "Help Center";
const String termsAppbarTitle = "Terms And Condition";
const String privacyAppbarTitle = "Privacy Policy";

const String LangAppbarTitle = "Language Selection";
const String manageCarAppbarTitle = "Manage Car Lease";
const String chooseUserTypeappBartitle = "Choose User Type";
const String addCarAppbarTitle = "Add car On Lease";
const String receivedApply = "Received Apply";
const String forgetPwdAppBatTitle = "Forgot Password";
const String updateAppbarTitle = "Update Password";
const String verificationAppbarTitle = "Update Password";
const String registerAppbarTitle = "Register now";
const String LoginAppbarTitle = "Login ";

// Dimensions du tiroir (Drawer)
const double drawerAvatarRadius = 40;
const double drawerHorizontalPadding = 25;
const double drawerVerticalPadding = 25;
const double drawerAvatarSpacing = 16;

// URL de l'image du tiroir (Drawer)
const String drawerAvatarImageUrl =
    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fsalondesmaires-gard.com%2Fspeaker%2Fjohn-doe%2F&psig=AOvVaw3mB_jiGNcMuuGjPJ8hA-AU&ust=1697720823726000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCMiFh4fV_4EDFQAAAAAdAAAAABAE';

// Dimensions de la carte (Card)
final defaultBorderRadius = BorderRadius.circular(defaultSpace);
const double cardImageHeight = 120.0;
const double cardImageWidth = 160.0;
const double cardEditButtonWidth = 40.0;
const double cardEditButtonHeight = 20.0;

// ************** AUTH INPUT ***********//

final loginScreenInput = [
  CustomTextField(
    icon: Icons.email_outlined,
    hintText: 'Email',
  ),
  CustomTextField(
    icon: Icons.lock_outline_rounded,
    hintText: 'Password',
    isPassword: true,
  ),
  buildForgetPasswordRow(),
];

final profileCustomInputs = [
  CustomTextField(
    icon: Icons.person_outlined,
    hintText: 'Username',
  ),
  CustomTextField(
    icon: Icons.person_outlined,
    hintText: 'Lastname',
  ),
  CustomTextField(
    icon: Icons.email_outlined,
    hintText: 'Email',
  ),
  CustomTextField(
    icon: Icons.phone_android_sharp,
    hintText: 'Mobile Number',
  ),
];

final changepwdCustomInputs = [
  CustomTextField(
    icon: Icons.lock_outlined,
    hintText: 'Old password',
    isPassword: true,
  ),
  CustomTextField(
    icon: Icons.lock_outlined,
    hintText: 'New password',
    isPassword: true,
  ),
  CustomTextField(
    icon: Icons.lock_outlined,
    hintText: 'Confirm password',
    isPassword: true,
  ),
];

final signInTextInputs = [
  CustomTextField(
    icon: Icons.person_outlined,
    hintText: 'Username',
  ),
  CustomTextField(
    icon: Icons.person_outlined,
    hintText: 'Lastname',
  ),
  CustomTextField(
    icon: Icons.email_outlined,
    hintText: 'Email',
  ),
  CustomTextField(
    icon: Icons.phone_android_sharp,
    hintText: 'Telephone',
  ),
  Row(
    children: [
      Expanded(
        child: CustomTextField(
          icon: Icons.flag_outlined,
          hintText: 'Country',
        ),
      ),
      SizedBox(
        width: 5,
      ),
      Expanded(
        child: CustomTextField(
          icon: Icons.location_city,
          hintText: 'City',
        ),
      ),
    ],
  ),
  CustomTextField(
    icon: Icons.lock_outline_rounded,
    hintText: 'Password',
    isPassword: true,
  ),
  CustomTextField(
    icon: Icons.lock_outline_rounded,
    hintText: 'Confirm Password',
    isPassword: true,
  ),
  Row(
    children: [
      Checkbox(
        value: false,
        onChanged: (bool? value) {},
      ),
      Flexible(
        child: Text(
          "By signing up you accept the Terms of Service & Privacy Policy",
        ),
      ),
    ],
  )
];

final helpcenterInputForm = [
  CustomTextField(
    icon: Icons.person_outlined,
    hintText: 'Full Name',
  ),
  CustomTextField(
    icon: Icons.email_outlined,
    hintText: 'Email',
  ),
  TextAreaWithLabel(
    labelText: 'Query ',
    controller: TextEditingController(),
    labelPositionIscentered: true,
  ),
];

final addcardInputs = [
  CustomTextField(
    icon: Icons.drive_eta,
    hintText: 'Add Title to your car',
  ),
  CustomTextField(
    icon: Icons.directions_car,
    hintText: 'Enter Car name & Model',
  ),
  CustomTextField(
    icon: Icons.email_outlined,
    hintText: 'Enter Miles Driven',
  ),
  Row(
    children: [
      Expanded(
        child: CustomTextField(
          icon: Icons.access_time,
          hintText: 'Lease Period',
        ),
      ),
      SizedBox(
        width: 5,
      ),
      Expanded(
        child: CustomTextField(
          icon: Icons.monetization_on,
          hintText: 'Lease Amount',
        ),
      ),
    ],
  ),
  Row(
    children: [
      Expanded(
        child: Container(
          margin: EdgeInsets.only(bottom: 5, top: 5),
          decoration: BoxDecoration(
            border: Border.all(
              color: kDefaultColor, // Couleur de la bordure
              width: 1.0, // Largeur de la bordure
            ),
            borderRadius: BorderRadius.circular(10), // Coins arrondis
          ),
          padding: EdgeInsets.all(10), // Ajouter un espacement intérieur
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Country',
              ),
              Icon(
                Icons.arrow_drop_down,
                size: 24,
              ),
            ],
          ),
        ),
      ),
      SizedBox(
        width: 5,
      ),
      Expanded(
        child: Container(
          margin: EdgeInsets.only(bottom: 5, top: 5),
          decoration: BoxDecoration(
            border: Border.all(
              color: kDefaultColor, // Couleur de la bordure
              width: 1.0, // Largeur de la bordure
            ),
            borderRadius: BorderRadius.circular(10), // Coins arrondis
          ),
          padding: EdgeInsets.all(10), // Ajouter un espacement intérieur
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'City',
              ),
              Icon(
                Icons.arrow_drop_down,
                size: 24,
              ),
            ],
          ),
        ),
      )
    ],
  ),
  CustomTextField(
    icon: Icons.clear_all_rounded,
    hintText: 'Add Frequnency',
  ),
  Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Text(
        '(Weekly, Monthly, Quarterly)',
        style: TextStyle(
          color: kBlack,
          fontSize: 8,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
          height: 0,
        ),
      )
    ],
  ),
  SizedBox(
    height: 10,
  ),
  Align(
    alignment: Alignment.centerRight,
    child: Container(
      decoration: BoxDecoration(
        color: kDefaultColor, // Couleur de fond grise
        border: Border.all(
          color: kDefaultColor, // Couleur de la bordure
          width: 1.0, // Largeur de la bordure
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(
                10.0), // Ajout d'espace entre le texte et la bordure
            child: Text(
              'Add More field',
              style: TextStyle(fontSize: 15, color: kWhite),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(
                8.0), // Ajout d'espace entre l'icône et la bordure
            child: Icon(
              Icons.add,
              size: 24,
              color: kWhite,
            ),
          ),
        ],
      ),
    ),
  ),
  TextAreaWithLabel(
    labelText: 'Description ',
    controller: TextEditingController(),
    labelPositionIscentered: false,
  ),
  SizedBox(
    height: 15,
  ),
  Container(
    width: double.infinity, // Pour s'étendre sur toute la largeur disponible
    decoration: BoxDecoration(
      color: kDefaultColor, // Couleur de fond
    ),
    padding: EdgeInsets.all(10), // Ajouter un espacement intérieur
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(Localfiles
            .carImg1), // Remplacez 'assets/car1.jpg' par le chemin de votre première image
        SizedBox(height: 16), // Espace vertical entre les images
        Image.asset(Localfiles
            .carImg2), // Remplacez 'assets/car1.jpg' par le chemin de votre première image
        SizedBox(height: 16), // Espace vertical entre les images
        Image.asset(Localfiles
            .carImg3), // Remplacez 'assets/car1.jpg' par le chemin de votre première image
      ],
    ),
  )
];

final forgetInput = [
  CustomTextField(
    icon: Icons.email_outlined,
    hintText: 'Email',
  ),
];

final newPassword = [
  CustomTextField(
    icon: Icons.lock_outline_rounded,
    hintText: 'Password',
    isPassword: true,
  ),
  CustomTextField(
    icon: Icons.lock_outline_rounded,
    hintText: 'Password',
    isPassword: true,
  ),
];

final optTextFields = [
  Column(
    children: [
      OtpTextField(
        numberOfFields: 4,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black, // Couleur de la bordure
              width: 1.0, // Largeur de la bordure
            ),
            borderRadius:
                BorderRadius.circular(5), // Coins arrondis de la bordure
          ),
        ),
        //runs when a code is typed in
        onCodeChanged: (String code) {
          //handle validation or checks here
        },
        //runs when every textfield is filled
        onSubmit: (String verificationCode) {
          print(verificationCode);
        },
      ),
      SizedBox(
        height: 30,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Resend OTP',
                  style: TextStyle(
                    color: Color(0xFF262626),
                    fontSize: 10,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 0.16,
                  ),
                ),
                TextSpan(
                  text: ' ',
                  style: TextStyle(
                    color: Color(0x66262362),
                    fontSize: 10,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 0.16,
                  ),
                ),
                TextSpan(
                  text: '00:30',
                  style: TextStyle(
                    color: Color(0xFF262626),
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.11,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          )
        ],
      )
    ],
  )
];
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
