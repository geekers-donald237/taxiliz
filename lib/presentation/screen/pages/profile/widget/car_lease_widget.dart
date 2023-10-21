import '../../../../../config/theme/theme.dart';
import '../../../../../config/utils/export_utils.dart';

class CarLeaseCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;

  CarLeaseCard({
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
                    'Car Lease',
                    style: TextStyle(
                      color: kBlack,
                      fontSize: fontsize_15,
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
                      Center(
                        child: ElevatedButton(
                          child: Text(
                            "Edit Details",
                            style:
                                TextStyle(fontSize: fontsize_15, color: kBlack),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: kDefaultColor,
                            elevation: noElevation,
                            minimumSize:
                                Size(cardEditButtonWidth, cardEditButtonHeight),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Icon(Icons.delete_outline),
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
