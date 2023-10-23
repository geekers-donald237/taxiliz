
import '../../../../config/utils/export_utils.dart';
import '../../widget/utils/helpers_widget.dart';

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