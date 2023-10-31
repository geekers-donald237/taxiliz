import 'package:flutter/material.dart';
import 'package:taxiliz/config/utils/constant.dart';

import '../../../config/theme/theme.dart';

class CountryCitySelection extends StatelessWidget {
  final String label;
  final ValueChanged<String?>? onChanged;

  CountryCitySelection({
    required this.label,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(bottom: defaultSpacing_5, top: defaultSpacing_5),
        decoration: BoxDecoration(
          border: Border.all(
            color: AppStyle.kDefaultColor, // Couleur de la bordure
            width: customBorderWidth, // Largeur de la bordure
          ),
          borderRadius: BorderRadius.circular(defaultSpacing), // Coins arrondis
        ),
        padding: EdgeInsets.all(defaultSpacing), // Ajouter un espacement intérieur
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label),
            Icon(
              arrowDropDownIcon,
              size: iconSize,
            ),
          ],
        ),
      ),
    );
  }
}
