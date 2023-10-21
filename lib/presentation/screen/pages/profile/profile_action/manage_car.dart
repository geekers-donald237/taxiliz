import 'package:taxiliz/config/utils/constant.dart';

import '../../../widget/export_widget.dart';
import '../widget/car_lease_widget.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: cardList.length,
                itemBuilder: (context, index) {
                  return CarLeaseCard(
                    title: cardList[index].title,
                    subtitle: cardList[index].subtitle,
                    imagePath: cardList[index].imagePath,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
