import 'package:taxiliz/config/routes/routes_name.dart';

import '../../../../config/theme/theme.dart';
import '../../../../config/utils/constant.dart';
import '../../../../config/utils/helpers.dart';
import '../../../../config/utils/localfile.dart';
import '../car_lease_widget.dart';
import '../custom_bloack.dart';
import '../custom_card_car.dart';
import '../driver_switch_widget.dart';
import '../export_widget.dart';
import '../notification_card_widget.dart';

Container buildContainerWithImage(String imagePath) {
  DecorationImage decorationImage = DecorationImage(
    image: AssetImage(imagePath),
    fit: BoxFit.fill, // Remplacez fill par le mode de déformation souhaité
  );

  return Container(
    width: splashLogoContainerWith,
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
            Text('Language Selection', style: AppStyle.AppbarTextStyle()),
          ],
        ),
      SizedBox(
        height: defaultSpace * 2,
      ),
      Container(
          child: Container(
        width: customSelectLanguageWidth,
        height: customSelectLanguageHeight,
        decoration: BoxDecoration(
          color: kWhite,
          borderRadius: BorderRadius.circular(defaultSpace),
          border: Border.all(
            color: kDefaultColor,
            width: customBorderWidth,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Please Select Language', style: AppStyle.AppbarTextStyle()),
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
    decoration: globalGradientDecoration,
    child: LayoutBuilder(builder: (context, constraints) {
      return Center(
        child: content,
      );
    }),
  );
}

Widget splashView(bool circularisLoading) {
  return createReusableContainer(
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildContainerWithImage(Localfiles.logo),
        if (circularisLoading) const SizedBox(height: defaultSpace * 2),
        if (circularisLoading) CircularProgressIndicator(),
      ],
    ),
  );
}

Widget mainLanguageSelectView(
  BuildContext context,
  bool displayTextOnTheTopOfSelect,
  bool isInsideProfilePage,
) {
  if (isInsideProfilePage) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(child: selectLanguageContainer(context, false)),
        const MyHeightSizedBox(),
        customAuthBtn('Continue', true, onTap: null),
      ],
    );
  } else {
    return createReusableContainer(
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildContainerWithImage(Localfiles.logo),
          selectLanguageContainer(context, displayTextOnTheTopOfSelect),
          const MyHeightSizedBox(),
          customAuthBtn(
            'Continue',
            true,
            onTap: () {
              NavigationServices(context).gotoLoginOrSignupScreen();
            },
          ),
        ],
      ),
    );
  }
}

Widget updatePasswordMainView(BuildContext context) {
  return createReusableContainer(
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        buildContainerWithImage(Localfiles.forgotPass),
        const SizedBox(height: defaultSpace * 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Create Your New Password',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF262626),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            )
          ],
        ),
        BuildTextInputForm(false, 'Update', newPassword, context, 20),
      ],
    ),
  );
}

Widget verificationScreenMainView(BuildContext context) {
  return createReusableContainer(
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        buildContainerWithImage(Localfiles.forgotPass),
        const SizedBox(height: defaultSpace * 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please Enter the 4 Digit code sent to\nyour Email',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF262626),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            )
          ],
        ),
        BuildTextInputForm(false, 'Continue', optTextFields, context, 20),
      ],
    ),
  );
}

Widget loginOrRegisterMainView(BuildContext context) {
  return createReusableContainer(
    Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        buildContainerWithImage(Localfiles.logo),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            customAuthBtn(
              'Log In',
              false,
              onTap: () {
                NavigationServices(context).gotoLoginScreen();
              },
            ),
            SizedBox(height: btnSpaceEscape),
            customAuthBtn('Sign Up', true, onTap: () {
              NavigationServices(context).gotoRegisterScreen();
            }),
          ],
        ),
      ],
    ),
  );
}

Widget LoginMainView(BuildContext context) {
  return createReusableContainer(
    Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        buildContainerWithImage(Localfiles.logo),
        const SizedBox(height: defaultSpace * 2),
        BuildTextInputForm(false, 'Login ', loginScreenInput, context, 40),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(child: customAuthBtn('Login', true)),
                ],
              ),
            ),
            authRichTextMessage('Don’t have an account?', 'Sign Up'),
          ],
        )
      ],
    ),
  );
}

Center helpCenterMainView(BuildContext context) {
  return Center(
    child:
        BuildTextInputForm(false, 'submit', helpcenterInputForm, context, 40),
  );
}

Padding manageCarLeaseMainView() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: cardList.length,
            itemBuilder: (context, index) {
              return CarLeaseCard(
                title: cardList[index].title,
                subtitle: cardList[index].subtitle,
                imagePath: cardList[index].imagePath,
              );
            },
          ),
        ),
      ],
    ),
  );
}

Widget forgetPasswordMainView(BuildContext context) {
  return createReusableContainer(
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildContainerWithImage(Localfiles.optImage),
          const SizedBox(height: defaultSpace * 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Please Enter your Email',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF262626),
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              )
            ],
          ),
          BuildTextInputForm(false, 'Continue ', forgetInput, context, 40),
        ],
      ),
    ),
  );
}

Widget registerMainView(BuildContext context) {
  return createReusableContainer(Center(
    child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // buildContainerWithImage(Localfiles.logo),
          const SizedBox(height: defaultSpace),
          BuildTextInputForm(false, 'Sign Up', signInTextInputs, context, 40),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(child: customAuthBtn('Sign Up', true)),
                  ],
                ),
              ),
              GestureDetector(
                  onTap: () {
                    NavigationServices(context).gotoLoginScreen();
                  },
                  child: authRichTextMessage(
                      'Already have an account?', 'Login Now')),
            ],
          )
        ],
      ),
    ),
  ));
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
            style: AppStyle().getFirstTextSpanStyle(),
          ),
          TextSpan(
            text: secondText,
            style: AppStyle().getSecondTextSpanStyle(),
          ),
        ],
      ),
    ),
  );
}

class MyHeightSizedBox extends StatelessWidget {
  const MyHeightSizedBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: defaultSpace,
    );
  }
}

Widget customAuthBtn(
  String text,
  bool isInverted, {
  VoidCallback? onTap, // Paramètre onTap optionnel
}) {
  final textColor = isInverted ? kWhite : kBlack;
  final bgColor = isInverted ? kBlack : kTransparent;

  return GestureDetector(
    onTap: onTap, // Attachez onTap au GestureDetector
    child: Container(
      width: customAuthBtnWidth,
      height: customAuthBtnHeight,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(defaultSpace),
        border: Border.all(width: customBorderWidth, color: kBlack),
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
  final textColor = isInverted ? kWhite : kBlack;
  final bgColor = isInverted ? kBlack : kTransparent;

  return GestureDetector(
    onTap: onTap, // Attachez onTap au GestureDetector
    child: Container(
      width: 80,
      height: 40,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(defaultSpace),
        border: Border.all(width: 1, color: kBlack),
      ),
      child: Center(
        child: Text(text, style: AppStyle.btnTextStyle(textColor)),
      ),
    ),
  );
}

Padding termsAndConditionsMainView() {
  return const Padding(
    padding: const EdgeInsets.all(defaultSpace * 2),
    child: SingleChildScrollView(
      child: Expanded(
        child: Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vitae nunc amet pulvinar mi in neque diam arcu. Mauris tellus orci est et amet quam facilisis. Vel aliquam accumsan, at amet, sed diam ullamcorper. Habitant dui odio vel adipiscing id pellentesque feugiat. Tortor gravida convallis viverra pretium urna vulputate tortor enim viverra. Porta egestas dui, mi lectus sit cras tortor dui.\nArcu est et vel faucibus morbi. Sed ut porttitor hendrerit non eget. Amet, scelerisque fermentum at aliquam. At at eu leo, arcu, aliquam lectus. Vitae curabitur pellentesque viverra eu nulla cursus elementum. Morbi urna orci et semper sit nec sed enim ut. ',
          style: TextStyle(
            color: Color(0xFF262626),
            fontSize: 14,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            height: 1.5, // Ajustez la hauteur selon vos besoins
          ),
        ),
      ),
    ),
  );
}

Padding PivacyPolicyMainView() {
  return const Padding(
    padding: const EdgeInsets.all(defaultSpace * 2),
    child: SingleChildScrollView(
      child: Expanded(
        child: Text(
          'Mauris tellus orci est et amet quam facilisis. Vel aliquam accumsan, at amet, sed diam ullamcorper. Habitant dui odio vel adipiscing id pellentesque feugiat. Tortor gravida convallis viverra pretium urna vulputate tortor enim viverra. Porta egestas dui, mi lectus sit cras tortor dui. Arcu est et vel faucibus morbi. Sed ut porttitor hendrerit non eget. Amet, scelerisque fermentum at aliquam. At at eu leo, arcu, aliquam lectus. Vitae curabitur pellentesque viverra eu nulla cursus elementum. Morbi urna orci et semper sit nec sed enim ut. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vitae nunc amet pulvinar mi in neque diam arcu.',
          style: TextStyle(
            color: Color(0xFF262626),
            fontSize: 14,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            height: 1.5, // Ajustez la hauteur selon vos besoins
          ),
        ),
      ),
    ),
  );
}

Drawer customHomeDrawer(BuildContext context) {
  return Drawer(
    child: Padding(
      padding: defaultDrawerPadding,
      child: ListView(
        children: [
          BuildDrawerUserProfile(true),
          Column(
            children: [
              CustomDrawerListile(
                icon: Icons.book,
                title: 'View Contract',
                onTap: () {},
              ),
              CustomDrawerListile(
                icon: Icons.help_center,
                title: 'Help Center',
                onTap: () {
                  NavigationServices(context).gotoHelpCenterScreen();
                },
              ),
              CustomDrawerListile(
                icon: Icons.policy_outlined,
                title: 'Terms and Conditions',
                onTap: () {
                  NavigationServices(context).gotoTermsAndConditionScreen();
                },
              ),
              CustomDrawerListile(
                icon: Icons.privacy_tip_outlined,
                title: 'Privacy Policy',
                onTap: () {
                  NavigationServices(context).gotoPrivacyPolicyScreen();
                },
              ),
              DriverSwitchWidget(),
            ],
          ),
        ],
      ),
    ),
  );
}

Padding mainProfileView(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(defaultSpace),
    child: ListView(children: <Widget>[
      Center(child: BuildDrawerUserProfile(false)),
      Column(
        children: [
          CustomDrawerListile(
            icon: Icons.person,
            title: 'profile',
            onTap: () {
              NavigationServices(context).gotoChangeProfileScreen();
            },
          ),
          CustomDrawerListile(
            icon: Icons.manage_accounts_outlined,
            title: 'Manage Car Lease',
            onTap: () {
              NavigationServices(context).gotoManageCarLeaseScreen();
            },
          ),
          CustomDrawerListile(
            icon: Icons.lock_outlined,
            title: 'Change Password',
            onTap: () {
              NavigationServices(context).gotoChangePasswordScreen();
            },
          ),
          CustomDrawerListile(
            icon: Icons.language_outlined,
            title: 'Change Language',
            onTap: () {
              NavigationServices(context).gotoSelectLanguageScreen(true);
            },
          ),
          CustomDrawerListile(
            icon: Icons.logout_outlined,
            title: 'Logout',
            onTap: () {
              showConfirmationDialog(context, 'Delete Your Account',
                  'Are you sure you want to delete your account permanently?',
                  () {
                print('fff');
                Navigator.of(context).pop();
              });
            },
          ),
          CustomDrawerListile(
            icon: Icons.delete_outline,
            title: 'Delete Account',
            onTap: () {
              showConfirmationDialog(
                  context, 'Log Out', 'Do you want to log Out?', () {
                print('dddd');
                Navigator.of(context).pop();
              });
            },
          ),
        ],
      )
    ]),
  );
}

Expanded DisplayCarCard() {
  return Expanded(
    child: ListView.builder(
      itemCount: cardList.length,
      itemBuilder: (context, index) {
        return CustomCard(
          title: cardList[index].title,
          subtitle: cardList[index].subtitle,
          imagePath: cardList[index].imagePath,
        );
      },
    ),
  );
}

Widget BuildDrawerUserProfile(bool isHorizontalProfile) {
  if (isHorizontalProfile) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(Localfiles.person),
          radius: drawerAvatarRadius,
        ),
        SizedBox(width: drawerAvatarSpacing),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Investor Name',
              style: AppStyle.drawerTitleStyle(),
            ),
            Text(
              'lorem Ipsum',
              style: AppStyle.drawersubtitleStyle(),
            )
          ],
        ),
      ],
    );
  } else {
    // Disposition verticale (nouvelle disposition)
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(Localfiles.person),
          radius: drawerAvatarRadius,
        ),
        const SizedBox(height: drawerAvatarSpacing),
        Text(
          'Investor Name',
          style: AppStyle.drawerTitleStyle(),
        ),
        Text(
          'lorem Ipsum',
          style: AppStyle.drawersubtitleStyle(),
        )
      ],
    );
  }
}

Row DisplayHomeMessage() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        'Previous Car Listed by you',
        style: AppStyle.homeDefaultBlockText(),
      ),
      TextButton(
        onPressed: () {},
        child: Text(
          'More >>',
          style: AppStyle.homeDefaultBlockText(),
        ),
      ),
    ],
  );
}

AppBar customAppbar(String appBarText) {
  return AppBar(
    backgroundColor: AppbarBackgroundColor,
    centerTitle: centerTitle,
    elevation: noElevation,
    iconTheme: IconThemeData(color: defaultIconColor),
    title: Text(
      appBarText,
      style: AppStyle.AppbarTextStyle(),
    ),
  );
}

Padding addCarMainView(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: BuildTextInputForm(false, 'Done ', addcardInputs, context, 20),
  );
}

Widget notificationMainView() {
  return Padding(
    padding: const EdgeInsets.all(defaultSpace),
    child: Container(
      margin: EdgeInsets.only(top: defaultSpace),
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
            height: defaultSpace,
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
    padding: const EdgeInsets.all(defaultSpace * 2),
    child: Column(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomBlock(showIcon: true),
            SizedBox(height: defaultSpace),
            GestureDetector(
                onTap: () {
                  NavigationServices(context).gotoViewReceivedScreen();
                },
                child: CustomBlock(showIcon: false)),
          ],
        ),
        SizedBox(
          height: defaultSpace,
        ),
        DisplayHomeMessage(),
        DisplayCarCard(),
      ],
    ),
  );
}

Container receivedMainView() {
  return Container(
    margin: EdgeInsets.only(top: 10),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Expanded(
        child: ListView.builder(
          itemCount: 6, // Nombre d'éléments à afficher
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(6), // Espace interne du conteneur
              child: Column(
                // Utilisation d'une colonne pour aligner les éléments en haut
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Alignement vertical en haut
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(Localfiles
                              .person), // Remplacez par le chemin de votre photo
                          SizedBox(
                              width:
                                  16), // Espace horizontal entre l'image et la colonne

                          Column(
                            crossAxisAlignment: CrossAxisAlignment
                                .start, // Alignement vertical en haut
                            children: <Widget>[
                              Text('Driver Name'),
                              SizedBox(
                                  height:
                                      8), // Espace entre le nom et le nom de la voiture
                              Text('Car Name'),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(
                            4), // Espace interne du conteneur autour de l'icône et du message
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black, // Couleur de la bordure
                            width: 1.0, // Largeur de la bordure
                          ),
                          borderRadius: BorderRadius.circular(
                              20), // Coins arrondis du conteneur
                        ),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors
                                      .green, // Couleur de la bordure interne verte
                                  width: 1.0, // Largeur de la bordure
                                ),
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Icon(
                                Icons
                                    .phone_in_talk_outlined, // Remplacez par l'icône de votre choix
                                size: 18,
                                color: Colors
                                    .white, // Couleur blanche pour l'icône
                              ),
                            ),
                            SizedBox(
                                width:
                                    8), // Espace horizontal entre l'icône et le texte
                            Text(
                              'Call ',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                      width:
                          16), // Espace horizontal entre la ligne et le diviseur
                  Divider(
                    color: Colors.black, // Couleur du diviseur
                    thickness: 1, // Épaisseur du diviseur
                  ),
                ],
              ),
            );
          },
        ),
      ),
    ),
  );
}

Container changeProfileMainView(BuildContext context) {
  return Container(
      margin: EdgeInsets.only(top: defaultSpace * 2),
      child:
          BuildTextInputForm(true, 'Save ', profileCustomInputs, context, 40));
}

Center changePasswordMainView(BuildContext context) {
  return Center(
    child:
        BuildTextInputForm(false, 'Update', changepwdCustomInputs, context, 40),
  );
}

Widget BuildTextInputForm(bool diplay_picture, String text,
    List customTextFields, BuildContext context, double spacebetweenBtn) {
  return Padding(
    padding: const EdgeInsets.all(defaultSpace),
    child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          if (diplay_picture) buildProfilePhoto(),
          SizedBox(
            height: defaultSpace,
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
