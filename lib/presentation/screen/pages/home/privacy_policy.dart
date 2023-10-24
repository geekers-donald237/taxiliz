
import '../../../../config/utils/export_utils.dart';
import '../../widget/utils/reusable_other.dart';
import '../../widget/utils/main_view.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(privacyAppbarTitle),
      body: PivacyPolicyMainView(),
    );
  }
}