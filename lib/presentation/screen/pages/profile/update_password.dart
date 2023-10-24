import 'package:taxiliz/config/utils/constant.dart';
import 'package:taxiliz/presentation/screen/widget/export_widget.dart';

import '../../widget/utils/main_view.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: customAppbar(changePasswordAppbarTitle),
      body: changePasswordMainView(context),
    );
  }
}
