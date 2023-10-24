import 'package:flutter/material.dart';
import 'package:taxiliz/config/utils/constant.dart';
import 'package:taxiliz/presentation/screen/widget/utils/reusable_other.dart';
import 'custom_textfield.dart';

class LeasePeriodAmountInput extends StatelessWidget {
  final String periodHintText;
  final String amountHintText;

  LeasePeriodAmountInput({
    required this.periodHintText,
    required this.amountHintText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomTextField(
            icon: Icons.access_time,
            hintText: periodHintText,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Expanded(
          child: CustomTextField(
            icon: Icons.monetization_on,
            hintText: amountHintText,
          ),
        ),
      ],
    );
  }
}

class CommonText extends StatelessWidget {
  final String text;

  const CommonText({required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF262626),
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}

Widget commonFormView(
  BuildContext context, 
  String imagePath, 
  String titleText, 
  String buttonText, 
  List<Widget> inputFields, 
  double spacing
) {
  return createReusableContainer(
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildContainerWithImage(imagePath),
          const SizedBox(height: defaultSpacing),
          CommonText(text: titleText),
          BuildTextInputForm(false, buttonText, inputFields, context, 40),
        ],
      ),
    ),
  );
}
