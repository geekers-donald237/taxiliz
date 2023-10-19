import 'package:flutter/material.dart';
import 'package:taxiliz/config/theme/theme.dart';
import 'package:taxiliz/config/utils/constant.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultSpace),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              height: notificationCardHeight,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(defaultSpace),
                border: Border.all(
                  width: customBorderWidth,
                  color: kDefaultColor,
                ),
              ),
              child: Padding(
                padding: cardPadding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Lorem ipsum dolor sit amet',
                            style: AppStyle.notifCardTitle),
                        const SizedBox(height: 4),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                  text:
                                      'Pulvinar quisquesed molestie tellus eleifend tellusquis.\nLorem ipsum dolor sit amet...',
                                  style: AppStyle.notifCardDescription),
                              TextSpan(
                                  text: 'View More', style: AppStyle.viewMore),
                            ],
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('10 june 2020', style: AppStyle.dateStyle), // Date
                        Text('02:30 am', style: AppStyle.dateStyle), // Heure
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
