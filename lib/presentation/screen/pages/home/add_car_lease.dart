import 'package:taxiliz/config/utils/export_utils.dart';
import 'package:taxiliz/presentation/screen/widget/export_widget.dart';

class AddCarLease extends StatefulWidget {
  const AddCarLease({super.key});

  @override
  State<AddCarLease> createState() => _AddCarLeaseState();
}

class _AddCarLeaseState extends State<AddCarLease> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(addCarAppbarTitle),
      body: BuildTextInputForm(false, "Done", addcardInputs),
    );
  }
}
