import 'package:taxiliz/presentation/screen/pages/auth/forget_pwd.dart';
import 'package:taxiliz/presentation/screen/pages/auth/login.dart';
import 'package:taxiliz/presentation/screen/pages/auth/register.dart';
import 'package:taxiliz/presentation/screen/pages/home/add_car_lease.dart';
import 'package:taxiliz/presentation/screen/pages/home/received_applies.dart';
import 'package:taxiliz/presentation/screen/pages/home/terms_and_condition.dart';

import '../../presentation/screen/pages/home/help_center.dart';
import '../../presentation/screen/pages/home/privacy_policy.dart';
import '../../presentation/screen/pages/profile/change_profile.dart';
import '../../presentation/screen/pages/profile/manage_car.dart';
import '../../presentation/screen/pages/profile/update_password.dart';
import '../../presentation/screen/pages/splash/login_or_signup_screen.dart';
import '../../presentation/screen/pages/splash/select_language.dart';
import '../../presentation/screen/widget/bottom_bar/nav_bar.dart';
import '../../presentation/screen/widget/export_widget.dart';

class NavigationServices {
  NavigationServices(this.context);

  final BuildContext context;

  Future<dynamic> _pushMaterialPageRoute(Widget widget,
      {bool fullscreenDialog = false}) async {
    return await Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => widget, fullscreenDialog: fullscreenDialog),
    );
  }

  void back(Widget widget) async {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => widget), (route) => false);
  }

  Future<dynamic> gotoLoginOrSignupScreen() async {
    return await _pushMaterialPageRoute((LoginOrSignupScreen()));
  }

  Future<dynamic> gotoSelectLanguageScreen(bool isInsideProfilePage) async {
    return await _pushMaterialPageRoute((LanguageSelection(
      isInsideProfilePage: isInsideProfilePage,
    )));
  }

  Future<dynamic> gotoRegisterScreen() async {
    return await _pushMaterialPageRoute((RegisterScreen()));
  }

  Future<dynamic> gotoLoginScreen() async {
    return await _pushMaterialPageRoute((LoginScreen()));
  }

  Future<dynamic> gotoForgetPasswordScreen() async {
    return await _pushMaterialPageRoute((ForgetPassword()));
  }

  Future<dynamic> gotoChangeProfileScreen() async {
    return await _pushMaterialPageRoute((changeProfileScreen()));
  }

  Future<dynamic> gotoChangePasswordScreen() async {
    return await _pushMaterialPageRoute((ChangePasswordScreen()));
  }

  Future<dynamic> gotoManageCarLeaseScreen() async {
    return await _pushMaterialPageRoute((ManageCarLease()));
  }

  Future<dynamic> gotoTermsAndConditionScreen() async {
    return await _pushMaterialPageRoute(TermsAndCondition());
  }

  Future<dynamic> gotoHelpCenterScreen() async {
    return await _pushMaterialPageRoute(HelpCenterScreen());
  }

  Future<dynamic> gotoPrivacyPolicyScreen() async {
    return await _pushMaterialPageRoute(PrivacyPolicyScreen());
  }

  
  Future<dynamic> gotoAddcarScreen() async {
    return await _pushMaterialPageRoute(AddCarLease());
  }

  
  Future<dynamic> gotoViewReceivedScreen() async {
    return await _pushMaterialPageRoute(ReceivedApply());
  }

   Future<dynamic> gotoHomeMainPage() async {
    return await _pushMaterialPageRoute(NavigationBottomBar());
  }
}
