import '../../../../config/routes/routes_name.dart';
import '../../../../config/theme/theme.dart';
import '../../../../config/utils/export_utils.dart';
import '../../../common/auth_inputs.dart';
import '../../../common/class/card_data.dart';
import '../car_lease_widget.dart';
import '../custom_card_car.dart';
import '../custom_listtile_drawer.dart';
import '../custom_select.dart';
import '../custom_textfield.dart';
import '../driver_switch_widget.dart';
import '../other_widget.dart';
import 'reusable_other.dart';

Widget splashView(bool circularisLoading) {
  return createReusableContainer(
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildContainerWithImage(Localfiles.logo),
        if (circularisLoading) const SizedBox(height: doubleSpacing),
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
        SizedBox(
          height: defaultSpacing,
        ),
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
          SizedBox(
            height: defaultSpacing,
          ),
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

Widget helpCenterMainView(BuildContext context) {
  return Center(
    child: BuildTextInputForm(
        false, 'submit', helpcenterInputForm, context, quadrupleSpacing),
  );
}

Widget manageCarLeaseMainView() {
  return Padding(
    padding: const EdgeInsets.all(defaultSpacing),
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

Widget LoginMainView(BuildContext context) {
  return createReusableContainer(
    Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        buildContainerWithImage(Localfiles.logo),
        const SizedBox(height: doubleSpacing),
        BuildTextInputForm(
            false, 'Login ', loginScreenInput, context, quadrupleSpacing),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(defaultSpacing),
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

Widget changeProfileMainView(BuildContext context) {
  return Container(
      margin: EdgeInsets.only(top: doubleSpacing),
      child: BuildTextInputForm(
          true, 'Save ', profileCustomInputs, context, quadrupleSpacing));
}

Widget changePasswordMainView(BuildContext context) {
  return Center(
    child: BuildTextInputForm(
        false, 'Update', changepwdCustomInputs, context, quadrupleSpacing),
  );
}

Widget receivedMainView() {
  return Container(
    margin: EdgeInsets.only(top: defaultSpacing),
    child: Padding(
      padding: const EdgeInsets.all(defaultSpacing),
      child: Expanded(
        child: ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index) {
            return ReceivedItem();
          },
        ),
      ),
    ),
  );
}

Row DisplayHomeMessage() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        'Previous Car Listed by you',
        style: AppStyle.homeDefaultBlockText,
      ),
      TextButton(
        onPressed: () {},
        child: Text(
          'More >>',
          style: AppStyle.homeDefaultBlockText,
        ),
      ),
    ],
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
              style: AppStyle.drawerTitleStyle,
            ),
            Text(
              'lorem Ipsum',
              style: AppStyle.drawersubtitleStyle,
            )
          ],
        ),
      ],
    );
  } else {
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
          style: AppStyle.drawerTitleStyle,
        ),
        Text(
          'lorem Ipsum',
          style: AppStyle.drawersubtitleStyle,
        )
      ],
    );
  }
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

Padding mainProfileView(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(defaultSpacing),
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
                Navigator.of(context).pop();
              });
            },
          ),
        ],
      )
    ]),
  );
}

Drawer customHomeDrawer(BuildContext context) {
  return Drawer(
    child: Padding(
      padding: AppStyle.cardPadding,
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

Widget termsAndConditionsMainView() {
  return PolicyTextView(
    text:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vitae nunc amet pulvinar mi in neque diam arcu. Mauris tellus orci est et amet quam facilisis. Vel aliquam accumsan, at amet, sed diam ullamcorper. Habitant dui odio vel adipiscing id pellentesque feugiat. Tortor gravida convallis viverra pretium urna vulputate tortor enim viverra. Porta egestas dui, mi lectus sit cras tortor dui.\nArcu est et vel faucibus morbi. Sed ut porttitor hendrerit non eget. Amet, scelerisque fermentum at aliquam. At at eu leo, arcu, aliquam lectus. Vitae curabitur pellentesque viverra eu nulla cursus elementum. Morbi urna orci et semper sit nec sed enim ut. ',
  );
}

Widget PivacyPolicyMainView() {
  return PolicyTextView(
    text:
        'Mauris tellus orci est et amet quam facilisis. Vel aliquam accumsan, at amet, sed diam ullamcorper. Habitant dui odio vel adipiscing id pellentesque feugiat. Tortor gravida convallis viverra pretium urna vulputate tortor enim viverra. Porta egestas dui, mi lectus sit cras tortor dui. Arcu est et vel faucibus morbi. Sed ut porttitor hendrerit non eget. Amet, scelerisque fermentum at aliquam. At at eu leo, arcu, aliquam lectus. Vitae curabitur pellentesque viverra eu nulla cursus elementum. Morbi urna orci et semper sit nec sed enim ut. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vitae nunc amet pulvinar mi in neque diam arcu.',
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
          const SizedBox(height: defaultSpacing),
          BuildTextInputForm(
              false, 'Sign Up', signInTextInputs, context, quadrupleSpacing),
          GestureDetector(
              onTap: () {
                NavigationServices(context).gotoLoginScreen();
              },
              child:
                  authRichTextMessage('Already have an account?', 'Login Now'))
        ],
      ),
    ),
  ));
}

Widget updatePasswordMainView(BuildContext context) {
  return commonFormView(
    context,
    Localfiles.forgotPass,
    'Create Your New Password',
    'Update',
    newPassword,
    20,
  );
}

Widget forgetPasswordMainView(BuildContext context) {
  return commonFormView(
    context,
    Localfiles.optImage,
    'Please Enter your Email',
    'Continue',
    forgetInput,
    defaultSpacing * 2,
  );
}
