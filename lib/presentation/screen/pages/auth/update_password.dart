import 'package:taxiliz/presentation/screen/widget/export_widget.dart';

import '../../../../config/utils/export_utils.dart';

class UpdatePassword extends StatelessWidget {
  const UpdatePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: customAppbar(updateAppbarTitle),
      body: updatePasswordMainView(context),
    );
  }
}
