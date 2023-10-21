import '../../../../../config/utils/export_utils.dart';
import '../../../widget/utils/helpers_widget.dart';

class ViewProfileScreen extends StatefulWidget {
  const ViewProfileScreen({super.key});

  @override
  State<ViewProfileScreen> createState() => _ViewProfileScreenState();
}

class _ViewProfileScreenState extends State<ViewProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(viewProfileAppBartitle),
      body: BuildTextInputForm(true,'Saved', profileCustomInputs),
    );
  }
}
