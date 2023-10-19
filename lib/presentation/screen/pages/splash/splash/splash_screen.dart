import 'package:taxiliz/config/theme/theme.dart';
import 'package:taxiliz/config/utils/export_utils.dart';

import '../../../widget/utils/helpers_widget.dart';

class SpashScreen extends StatefulWidget {
  const SpashScreen({super.key});
  @override
  State<SpashScreen> createState() => _SpashScreenState();
}

class _SpashScreenState extends State<SpashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: globalGradientDecoration,
        child: LayoutBuilder(builder: (context, constraints) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildContainerWithImage(),
                const SizedBox(height: defaultSpace * 2),
                const CircularProgressIndicator(),
              ],
            ),
          );
        }),
      ),
    );
  }
}
