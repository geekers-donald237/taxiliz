import 'package:taxiliz/config/routes/routes_name.dart';

import '../../../../../config/theme/theme.dart';
import '../../../../../config/utils/export_utils.dart';

class CustomBlock extends StatelessWidget {
  final bool showIcon;

  CustomBlock({required this.showIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Utilisez double.infinity pour la largeur
      height: height_45,
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: ShapeDecoration(
                color: AppStyle.kWhite,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: customBorderWidth,
                    strokeAlign: BorderSide.strokeAlignOutside,
                    color: AppStyle.kDefaultColor,
                  ),
                  borderRadius: BorderRadius.circular(defaultSpacing),
                ),
              ),
            ),
          ),
          Positioned(
            left: positioned_95,
            top: positioned_10,
            child: Text(
              showIcon ? 'Add A New Car' : 'View Received Applies',
              textAlign: TextAlign.justify,
              style: AppStyle.firstTextSpanStyle(),
            ),
          ),
          Positioned(
            right: showIcon ? 0 : 5,
            top: 0,
            child: showIcon
                ? InkWell(
                    onTap: () {
                      NavigationServices(context).gotoAddcarScreen();
                    },
                    child: Container(
                      width: value_42,
                      height: value_42,
                      decoration: ShapeDecoration(
                        color: AppStyle.kDefaultColor, // Couleur blanche
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: customBorderWidth,
                            strokeAlign: BorderSide.strokeAlignOutside,
                            color: AppStyle.kDefaultColor,
                          ),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(defaultSpacing),
                            bottomRight: Radius.circular(defaultSpacing),
                          ),
                        ),
                      ),
                      child: Center(
                        child: Icon(
                          addIcon,
                          color: AppStyle.kWhite,
                        ),
                      ),
                    ),
                  )
                : Container(),
          ),
        ],
      ),
    );
  }
}
