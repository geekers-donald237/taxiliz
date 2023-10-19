import '../../../../config/utils/export_utils.dart';
import '../../widget/utils/helpers_widget.dart';

class profileScreen extends StatefulWidget {
  const profileScreen({super.key});

  @override
  State<profileScreen> createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(profileAppBartitle),
      body: mainProfileView(),
    );
  }
}
