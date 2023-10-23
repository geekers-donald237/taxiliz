import 'package:taxiliz/config/utils/export_utils.dart';
import 'package:taxiliz/presentation/screen/widget/export_widget.dart';

class ReceivedApply extends StatefulWidget {
  const ReceivedApply({super.key});

  @override
  State<ReceivedApply> createState() => _ReceivedApplyState();
}

class _ReceivedApplyState extends State<ReceivedApply> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppbar(receivedApply), body: receivedMainView());
  }
}
