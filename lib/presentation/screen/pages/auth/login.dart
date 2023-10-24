import 'package:taxiliz/presentation/screen/widget/export_widget.dart';

import '../../widget/utils/main_view.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: customAppbar(''),
      body: LoginMainView(context),
    );
  }
}
