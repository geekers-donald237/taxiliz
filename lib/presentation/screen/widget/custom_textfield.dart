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
            color: kBlack,
          ),
          contentPadding:
              EdgeInsets.symmetric(vertical: 12.0), // Ajuste la hauteur
          filled: true, // Remplit avec une couleur d'arrière-plan
          fillColor: Colors.white, // Couleur d'arrière-plan blanche
          border: OutlineInputBorder(
            borderRadius: defaultBorderRadius,
            borderSide: BorderSide(color: kBlack, width: customBorderWidth),
          ),
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                    color: kBlack,
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

class TextAreaWithLabel extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final bool labelPositionIscentered;

  TextAreaWithLabel(
      {required this.labelText,
      required this.controller,
      required this.labelPositionIscentered});

  @override
  Widget build(BuildContext context) {
    MainAxisAlignment myAligment = labelPositionIscentered
        ? MainAxisAlignment.center
        : MainAxisAlignment.start;
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: myAligment,
            children: [
              Text(
                labelText,
                style: TextStyle(
                  fontSize: fontsize_15,
                  fontWeight: fontWeight_bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          TextField(
            controller: controller,
            maxLines: 5, // Vous pouvez ajuster le nombre de lignes souhaité
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: defaultBorderRadius,
                borderSide: BorderSide(color: kBlack, width: customBorderWidth),
              ), // Bordure de la zone de texte
              contentPadding:
                  EdgeInsets.all(defaultSpace), // Rembourrage interne
            ),
          ),
        ],
      ),
    );
  }
}
