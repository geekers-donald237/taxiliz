import '../../core/export_views.dart';

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
    return await _pushMaterialPageRoute((const LoginOrSignupScreen()));
  }

  Future<dynamic> gotoSelectLanguageScreen(bool isInsideProfilePage) async {
    return await _pushMaterialPageRoute((LanguageSelection(
      isInsideProfilePage: isInsideProfilePage,
    )));
  }

  Future<dynamic> gotoRegisterScreen() async {
    return await _pushMaterialPageRoute((const RegisterScreen()));
  }

  Future<dynamic> gotoLoginScreen() async {
    return await _pushMaterialPageRoute((const LoginScreen()));
  }

  Future<dynamic> gotoForgetPasswordScreen() async {
    return await _pushMaterialPageRoute((const ForgetPassword()));
  }

  Future<dynamic> gotoChangeProfileScreen() async {
    return await _pushMaterialPageRoute((const changeProfileScreen()));
  }

  Future<dynamic> gotoChangePasswordScreen() async {
    return await _pushMaterialPageRoute((const ChangePasswordScreen()));
  }

  Future<dynamic> gotoManageCarLeaseScreen() async {
    return await _pushMaterialPageRoute((const ManageCarLease()));
  }

  Future<dynamic> gotoTermsAndConditionScreen() async {
    return await _pushMaterialPageRoute(const TermsAndCondition());
  }

  Future<dynamic> gotoHelpCenterScreen() async {
    return await _pushMaterialPageRoute(const HelpCenterScreen());
  }

  Future<dynamic> gotoPrivacyPolicyScreen() async {
    return await _pushMaterialPageRoute(const PrivacyPolicyScreen());
  }

  Future<dynamic> gotoAddcarScreen() async {
    return await _pushMaterialPageRoute(const AddCarLease());
  }

  Future<dynamic> gotoViewReceivedScreen() async {
    return await _pushMaterialPageRoute(const ReceivedApply());
  }

  Future<dynamic> gotoHomeMainPage() async {
    return await _pushMaterialPageRoute(const NavigationBottomBar());
  }
}
