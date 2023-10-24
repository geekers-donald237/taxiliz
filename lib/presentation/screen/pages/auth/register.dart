import 'package:taxiliz/presentation/screen/widget/export_widget.dart';

import '../../widget/utils/main_view.dart';


class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: customAppbar(''),
      body: registerMainView(context),
    );
  }
}
