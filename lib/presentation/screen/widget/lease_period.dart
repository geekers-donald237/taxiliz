import 'package:flutter/material.dart';
import 'package:taxiliz/config/utils/constant.dart';
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
            icon: accessTimeIcon,
            hintText: periodHintText,
          ),
        ),
        SizedBox(
          width: defaultSpacing_5,
        ),
        Expanded(
          child: CustomTextField(
            icon: monetisation_on,
            hintText: amountHintText,
          ),
        ),
      ],
    );
  }
}
