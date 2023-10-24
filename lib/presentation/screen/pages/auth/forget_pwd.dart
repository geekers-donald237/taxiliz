import 'package:taxiliz/config/utils/export_utils.dart';
import 'package:taxiliz/presentation/screen/widget/export_widget.dart';

import '../../widget/utils/main_view.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: customAppbar(forgetPwdAppbarTitle),
      body: forgetPasswordMainView(context),
    );
  }
}
