import 'package:flutter/material.dart';

class CheckboxWithText extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?>? onChanged;
  final String text;

  CheckboxWithText({
    required this.value,
    required this.onChanged,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: value,
          onChanged: onChanged,
        ),
        Flexible(
          child: Text(text),
        ),
      ],
    );
  }
}
