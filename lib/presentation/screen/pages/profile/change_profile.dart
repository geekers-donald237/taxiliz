import '../../../../../config/utils/export_utils.dart';
import '../../widget/utils/helpers_widget.dart';

class changeProfileScreen extends StatefulWidget {
  const changeProfileScreen({super.key});

  @override
  State<changeProfileScreen> createState() => _changeProfileScreenState();
}

class _changeProfileScreenState extends State<changeProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(viewProfileAppBartitle),
      body: changeProfileMainView(context),
    );
  }
}
