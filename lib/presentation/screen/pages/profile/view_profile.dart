import '../../../../config/utils/export_utils.dart';
import '../../widget/utils/reusable_other.dart';
import '../../widget/utils/main_view.dart';

class profileScreen extends StatefulWidget {
  const profileScreen({super.key});

  @override
  State<profileScreen> createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(profileAppbarTitle),
      body: mainProfileView(context),
    );
  }
}
