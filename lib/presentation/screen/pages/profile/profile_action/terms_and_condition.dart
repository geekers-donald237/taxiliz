import 'package:taxiliz/presentation/screen/widget/export_widget.dart';

import '../../../../../config/utils/constant.dart';

class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(termsAppbarTitle),
      body: const Padding(
        padding: const EdgeInsets.all(defaultSpace * 2),
        child: SingleChildScrollView(
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vitae nunc amet pulvinar mi in neque diam arcu. Mauris tellus orci est et amet quam facilisis. Vel aliquam accumsan, at amet, sed diam ullamcorper. Habitant dui odio vel adipiscing id pellentesque feugiat. Tortor gravida convallis viverra pretium urna vulputate tortor enim viverra. Porta egestas dui, mi lectus sit cras tortor dui.\nArcu est et vel faucibus morbi. Sed ut porttitor hendrerit non eget. Amet, scelerisque fermentum at aliquam. At at eu leo, arcu, aliquam lectus. Vitae curabitur pellentesque viverra eu nulla cursus elementum. Morbi urna orci et semper sit nec sed enim ut. ',
            style: TextStyle(
              color: Color(0xFF262626),
              fontSize: 14,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              height: 1.5, // Ajustez la hauteur selon vos besoins
            ),
          ),
        ),
      ),
    );
  }
}
