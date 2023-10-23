import '../../../../config/utils/constant.dart';
import '../../widget/export_widget.dart';

class LanguageSelection extends StatefulWidget {
  final bool isInsideProfilePage;

  const LanguageSelection({super.key, required this.isInsideProfilePage});

  @override
  State<LanguageSelection> createState() => _LanguageSelectionState();
}

class _LanguageSelectionState extends State<LanguageSelection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: customAppbar(LangAppbarTitle),
      body: mainLanguageSelectView(context, true, widget.isInsideProfilePage),
    );
  }
}
