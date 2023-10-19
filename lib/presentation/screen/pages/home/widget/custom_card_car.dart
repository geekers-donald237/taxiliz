import 'package:flutter/material.dart';
import 'package:taxiliz/config/theme/theme.dart';
import 'package:taxiliz/config/utils/export_utils.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;

  CustomCard({
    required this.title,
    required this.subtitle,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: cardBorderRadius,
        side: BorderSide(
          color: kDefaultColor,
          width: customBorderWidth,
        ),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Padding(
        padding: const EdgeInsets.all(defaultSpace / 2),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: cardImageHeight,
              width: cardImageWidth,
              decoration: BoxDecoration(
                border: Border.all(
                  color: kTransparent,
                  width: customBorderWidth,
                ),
                borderRadius: cardImageBorderRadius,
              ),
              child: ClipRRect(
                borderRadius: cardImageBorderRadius,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(width: defaultSpace),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      color: kBlack,
                      fontSize: fontsize_20,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: kBlack,
                      fontSize: fontsize_10,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'View Lease Details',
                        style: AppStyle.cardViewLeaseDetailsTextStyle,
                      ),
                      Center(
                        child: ElevatedButton(
                          child: Text("Edit"),
                          style: ElevatedButton.styleFrom(
                            primary: kDefaultColor,
                            elevation: noElevation,
                            minimumSize:
                                Size(cardEditButtonWidth, cardEditButtonHeight),
                          ),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
