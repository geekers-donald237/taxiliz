import 'package:taxiliz/config/theme/theme.dart';
import 'package:taxiliz/config/utils/export_utils.dart';

class CustomDrawerListile extends StatelessWidget {
  final IconData? icon;
  final String title;
  final VoidCallback onTap;

  CustomDrawerListile({this.icon, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          textColor: kBlack,
          iconColor: kBlack,
          title: Text(title),
          leading: Icon(icon),
          onTap: onTap,
        ),
        Divider(
          thickness: dividerThickness,
        ),
      ],
    );
  }
}
