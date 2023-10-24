import 'package:country_flags/country_flags.dart';
import 'package:taxiliz/config/routes/routes_name.dart';

import '../../../../config/theme/theme.dart';
import '../../../../config/utils/constant.dart';
import '../../../../config/utils/helpers.dart';
import '../../../../config/utils/localfile.dart';
import '../../../common/auth_inputs.dart';
import '../custom_bloack.dart';
import '../export_widget.dart';
import '../notification_card_widget.dart';
import 'main_view.dart';



Widget buildFlagWidget(String languageCode) {
  return Container(
    width: flagSizeWidth,
    height: flagSizeHeight,
    child: CountryFlag.fromLanguageCode(languageCode),
  );
}


Container buildContainerWithImage(String imagePath) {
  DecorationImage decorationImage = DecorationImage(
    image: AssetImage(imagePath),
    fit: BoxFit.fill, // Remplacez fill par le mode de déformation souhaité
  );

  return Container(
    width: splashLogoContainerWidth,
    height: splashLogoContainerHeight,
    decoration: BoxDecoration(image: decorationImage),
  );
}

Widget selectLanguageContainer(BuildContext context, bool displayText) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      if (displayText)
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Language Selection', style: AppStyle.appbarTextStyle),
          ],
        ),
      SizedBox(
        height: doubleSpacing,
      ),
      Container(
          child: Container(
        width: customSelectLanguageWidth,
        height: customSelectLanguageHeight,
        decoration: BoxDecoration(
          color: AppStyle.kWhite,
          borderRadius: BorderRadius.circular(defaultSpacing),
          border: Border.all(
            color: AppStyle.kDefaultColor,
            width: customBorderWidth,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Please Select Language', style: AppStyle.appbarTextStyle),
            InkWell(
              onTap: () {
                showSelectLanguageDialog(context);
              },
              child: Icon(
                Icons.arrow_drop_down,
              ),
            ),
          ],
        ),
      )),
    ],
  );
}

Widget createReusableContainer(Widget content) {
  return Container(
    decoration: AppStyle.globalGradientDecoration,
    child: LayoutBuilder(builder: (context, constraints) {
      return Center(
        child: content,
      );
    }),
  );
}


Widget buildForgetPasswordRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      GestureDetector(
        child: Text('Forget Password?'),
      ),
    ],
  );
}

Widget authRichTextMessage(String firstText, String secondText) {
  return GestureDetector(
    child: RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: firstText,
            style: AppStyle.firstTextSpanStyle(),
          ),
          TextSpan(
            text: secondText,
            style: AppStyle.secondTextSpanStyle(),
          ),
        ],
      ),
    ),
  );
}

Widget customAuthBtn(
  String text,
  bool isInverted, {
  VoidCallback? onTap, // Paramètre onTap optionnel
}) {
  final textColor = isInverted ? AppStyle.kWhite : AppStyle.kBlack;
  final bgColor = isInverted ? AppStyle.kBlack : AppStyle.kTransparent;

  return GestureDetector(
    onTap: onTap, // Attachez onTap au GestureDetector
    child: Container(
      width: customAuthBtnWidth,
      height: customAuthBtnHeight,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(defaultSpacing),
        border: Border.all(width: customBorderWidth, color: AppStyle.kBlack),
      ),
      child: Center(
        child: Text(text, style: AppStyle.btnTextStyle(textColor)),
      ),
    ),
  );
}

Widget customDialogConfirmationBtn(
  String text,
  bool isInverted, {
  VoidCallback? onTap, // Paramètre onTap optionnel
}) {
  final textColor = isInverted ? AppStyle.kWhite : AppStyle.kBlack;
  final bgColor = isInverted ? AppStyle.kBlack : AppStyle.kTransparent;

  return GestureDetector(
    onTap: onTap, // Attachez onTap au GestureDetector
    child: Container(
      width: 80,
      height: 40,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(defaultSpacing),
        border: Border.all(width: customBorderWidth, color: AppStyle.kBlack),
      ),
      child: Center(
        child: Text(text, style: AppStyle.btnTextStyle(textColor)),
      ),
    ),
  );
}

AppBar customAppbar(String appBarText) {
  return AppBar(
    backgroundColor: AppStyle.AppbarBackgroundColor,
    centerTitle: centerTitle,
    elevation: noElevation,
    iconTheme: IconThemeData(color: AppStyle.defaultIconColor),
    title: Text(
      appBarText,
      style: AppStyle.appbarTextStyle,
    ),
  );
}

Widget addCarMainView(BuildContext context) {
  return BuildTextInputForm(false, 'Done ', addcardInputs, context, 20);
}

Widget notificationMainView() {
  return Padding(
    padding: const EdgeInsets.all(defaultSpacing),
    child: Container(
      margin: EdgeInsets.only(top: defaultSpacing),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              'Clear All',
              style: AppStyle.notifCardTitle,
            ),
          ),
          SizedBox(
            height: defaultSpacing,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return NotificationCard();
              },
            ),
          ),
        ],
      ),
    ),
  );
}

Widget DisplayAllHomeViews(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(defaultSpacing * 2),
    child: Column(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomBlock(showIcon: true),
            SizedBox(height: defaultSpacing),
            GestureDetector(
                onTap: () {
                  NavigationServices(context).gotoViewReceivedScreen();
                },
                child: CustomBlock(showIcon: false)),
          ],
        ),
        SizedBox(
          height: defaultSpacing,
        ),
        DisplayHomeMessage(),
        DisplayCarCard(),
      ],
    ),
  );
}


Widget BuildTextInputForm(bool diplay_picture, String text,
    List customTextFields, BuildContext context, double spacebetweenBtn) {
  return Padding(
    padding: const EdgeInsets.all(defaultSpacing),
    child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          if (diplay_picture) buildProfilePhoto(),
          SizedBox(
            height: defaultSpacing,
          ),
          ...customTextFields,
          SizedBox(
            height: spacebetweenBtn,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              customAuthBtn(text, true),
            ],
          ),
        ],
      ),
    ),
  );
}

Stack buildProfilePhoto() {
  return Stack(
    alignment: Alignment.center,
    children: [
      CircleAvatar(
        radius: 80.0,
        backgroundColor: Colors.grey,
        backgroundImage: AssetImage(Localfiles.person),
      ),
      Positioned(
        bottom: 0,
        right: 0,
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: IconButton(
            icon: Icon(Icons.camera_alt),
            onPressed: () {},
          ),
        ),
      ),
    ],
  );
}
