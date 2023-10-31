import 'package:flutter/material.dart';
import 'package:taxiliz/config/theme/theme.dart';
import 'package:taxiliz/config/utils/constant.dart';

class CustomTextField extends StatefulWidget {
  final IconData icon;
  final String hintText;
  final bool isPassword;
  CustomTextField({
    required this.icon,
    required this.hintText,
    this.isPassword = false,
  });

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: inputSeparation, bottom: inputSeparation),
      child: TextField(
        decoration: InputDecoration(
          hintText: widget.hintText,
          prefixIcon: Icon(
            widget.icon,
            color: AppStyle.kBlack,
          ),
          contentPadding:
              EdgeInsets.symmetric(vertical: defaultSpacing), 
          filled: true, 
          fillColor: AppStyle.kWhite, 
          border: OutlineInputBorder(
            borderRadius: defaultBorderRadius,
            borderSide:
                BorderSide(color: AppStyle.kBlack, width: customBorderWidth),
          ),
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon: Icon(
                    _obscureText ? visibilityIcon : visibilityOffIcon,
                    color: AppStyle.kBlack,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                )
              : null,
        ),
        obscureText: widget.isPassword && _obscureText,
      ),
    );
  }
}


class PolicyTextView extends StatelessWidget {
  final String text;

  const PolicyTextView({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(doubleSpacing),
      child: SingleChildScrollView(
        child: Expanded(
          child: Text(
            text,
            style: AppStyle.secondTextSpanStyle(),
          ),
        ),
      ),
    );
  }
}
