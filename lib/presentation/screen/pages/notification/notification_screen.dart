import 'package:taxiliz/config/theme/theme.dart';
import 'package:taxiliz/presentation/screen/pages/notification/widget/notification_card_widget.dart';

import '../../../../config/utils/export_utils.dart';
import '../../widget/utils/helpers_widget.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppbar(notificationAppBartitle),
        body: Padding(
          padding: const EdgeInsets.all(defaultSpace),
          child: Container(
            margin: EdgeInsets.only(top: defaultSpace),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Clear All',
                    style: AppStyle.notifCardTitle,
                  ),
                ),
                SizedBox(
                  height: defaultSpace,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return NotificationCard();
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
