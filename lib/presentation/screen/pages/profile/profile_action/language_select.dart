import '../../../../../config/utils/export_utils.dart';
import '../../../widget/utils/helpers_widget.dart';

class LanguageSelect extends StatefulWidget {
  const LanguageSelect({super.key});

  @override
  State<LanguageSelect> createState() => _LanguageSelectState();
}

class _LanguageSelectState extends State<LanguageSelect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(LangAppbarTitle),
      body: Container(
        child: LayoutBuilder(builder: (context, constraints) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                selectLanguageContainer(context),
                SizedBox(
                  height: defaultSpace,
                ),
                customAuthBtn('Continue', true)
              ],
            ),
          );
        }),
      ),
    );
  }
}
