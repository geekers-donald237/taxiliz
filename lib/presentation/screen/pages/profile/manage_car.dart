import '../../../../config/utils/export_utils.dart';
import '../../widget/utils/reusable_other.dart';
import '../../widget/utils/main_view.dart';

class ManageCarLease extends StatefulWidget {
  const ManageCarLease({super.key});

  @override
  State<ManageCarLease> createState() => _ManageCarLeaseState();
}

class _ManageCarLeaseState extends State<ManageCarLease> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(manageCarAppbarTitle),
      body: manageCarLeaseMainView(),
    );
  }
}
