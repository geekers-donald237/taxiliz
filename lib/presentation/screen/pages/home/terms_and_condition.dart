import 'package:taxiliz/presentation/screen/widget/export_widget.dart';

import '../../../../../config/utils/constant.dart';

class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(termsAppbarTitle),
      body: termsAndConditionsMainView(),
    );
  }
}
