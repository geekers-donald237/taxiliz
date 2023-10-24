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
      height: 42,
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
            left: 96,
            top: 9,
            child: Text(
              showIcon ? 'Add A New Car' : 'View Received Applies',
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Color(0xFF262626),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
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
                      width: 42,
                      height: 42,
                      decoration: ShapeDecoration(
                        color: AppStyle.kDefaultColor, // Couleur blanche
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignOutside,
                            color: Color(0xFFACACAC),
                          ),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.add,
                          color: Color(0xFFE8E8E8),
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
