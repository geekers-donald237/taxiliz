import '../../../../../config/utils/export_utils.dart';
import '../../widget/utils/reusable_other.dart';
import '../../widget/utils/main_view.dart';

class changeProfileScreen extends StatefulWidget {
  const changeProfileScreen({super.key});

  @override
  State<changeProfileScreen> createState() => _changeProfileScreenState();
}

class _changeProfileScreenState extends State<changeProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(viewProfileAppbarTitle),
      body: changeProfileMainView(context),
    );
  }
}
