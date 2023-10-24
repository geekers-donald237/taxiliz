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
        borderRadius: defaultBorderRadius,
        side: BorderSide(
          color: AppStyle.kDefaultColor,
          width: customBorderWidth,
        ),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Padding(
        padding: const EdgeInsets.all(defaultSpacing / 2),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: cardImageHeight,
              width: cardImageWidth,
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppStyle.kTransparent,
                  width: customBorderWidth,
                ),
                borderRadius: defaultBorderRadius,
              ),
              child: ClipRRect(
                borderRadius: defaultBorderRadius,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(width: defaultSpacing),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      color: AppStyle.kBlack,
                      fontSize: fontsize_20,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: AppStyle.kBlack,
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
                            primary: AppStyle.kDefaultColor,
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
