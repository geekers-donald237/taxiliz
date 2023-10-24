import '../../../../config/utils/export_utils.dart';
import '../../widget/utils/reusable_other.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppbar(notificationAppbarTitle),
        body: notificationMainView());
  }
}
