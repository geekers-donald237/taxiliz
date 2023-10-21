import 'package:taxiliz/config/utils/constant.dart';
import 'package:taxiliz/presentation/screen/widget/export_widget.dart';

class HelpCenterScreen extends StatelessWidget {
  const HelpCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(helcenterAppbarTitle),
      body: Center(
        child: BuildTextInputForm(false, "Submit", helpcenterInputForm),
      ),
    );
  }
}
