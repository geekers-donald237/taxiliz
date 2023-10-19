import '../../../../config/theme/theme.dart';
import '../../../../config/utils/constant.dart';
import '../../../../config/utils/helpers.dart';
import '../export_widget.dart';

Container buildContainerWithImage() {
  return Container(
    width: splashLogoContainerWith,
    height: splashLogoContainerHeight,
    decoration: BoxDecoration(image: decorationImage),
  );
}

Widget selectLanguageContainer(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text('Language Selection', style: AppStyle.AppbarTextStyle()),
      SizedBox(
        height: defaultSpace * 2,
      ),
      Container(
          child: Container(
        width: customSelectLanguageWidth,
        height: customSelectLanguageHeight,
        decoration: BoxDecoration(
          color: kWhite,
          borderRadius: BorderRadius.circular(defaultSpace),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Sélectionner la langue', style: AppStyle.AppbarTextStyle()),
            InkWell(
              onTap: () {
                showSelectLanguageDialog(context);
              },
              child: Icon(
                Icons.arrow_drop_down,
              ),
            ),
          ],
        ),
      )),
    ],
  );
}

Widget customAuthBtn(String text, bool isInverted) {
  final textColor = isInverted ? kWhite : kBlack;
  final bgColor = isInverted ? kBlack : kTransparent;

  return Container(
    width: customAuthBtnWidth,
    height: customAuthBtnHeight,
    decoration: BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.circular(defaultSpace),
      border: Border.all(width: customBorderWidth, color: kBlack),
    ),
    child: Center(
      child: Text(text, style: AppStyle.btnTextStyle(textColor)),
    ),
  );
}

class DrawerItem {
  final IconData icon;
  final String title;
  final Function() onTap;

  DrawerItem({
    required this.icon,
    required this.title,
    required this.onTap,
  });
}

Widget AllDrawerItem(List<DrawerItem> items) {
  return Column(
    children: items.map((item) {
      return CustomDrawerListile(
        icon: item.icon,
        title: item.title,
        onTap: item.onTap,
      );
    }).toList(),
  );
}

Drawer customHomeDrawer() {
  return Drawer(
    child: Padding(
      padding: defaultDrawerPadding,
      child: ListView(
        children: [
          BuildDrawerUserProfile(true),
          AllDrawerItem(drawerHomeItems),
        ],
      ),
    ),
  );
}

Padding mainProfileView() {
  return Padding(
    padding: const EdgeInsets.all(defaultSpace),
    child: ListView(children: <Widget>[
      Center(child: BuildDrawerUserProfile(false)),
      AllDrawerItem(profileItems),
    ]),
  );
}

Expanded DisplayCarCard() {
  return Expanded(
    child: ListView.builder(
      itemCount: cardList.length,
      itemBuilder: (context, index) {
        return CustomCard(
          title: cardList[index].title,
          subtitle: cardList[index].subtitle,
          imagePath: cardList[index].imagePath,
        );
      },
    ),
  );
}

Widget BuildDrawerUserProfile(bool isHorizontalProfile) {
  if (isHorizontalProfile) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(drawerAvatarImageUrl),
          radius: drawerAvatarRadius,
        ),
        SizedBox(width: drawerAvatarSpacing),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Investor Name',
              style: AppStyle.drawerTitleStyle(),
            ),
            Text(
              'lorem Ipsum',
              style: AppStyle.drawersubtitleStyle(),
            )
          ],
        ),
      ],
    );
  } else {
    // Disposition verticale (nouvelle disposition)
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(drawerAvatarImageUrl),
          radius: drawerAvatarRadius,
        ),
        const SizedBox(height: drawerAvatarSpacing),
        Text(
          'Investor Name',
          style: AppStyle.drawerTitleStyle(),
        ),
        Text(
          'lorem Ipsum',
          style: AppStyle.drawersubtitleStyle(),
        )
      ],
    );
  }
}

Row DisplayHomeMessage() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        'Previous Car Listed by you',
        style: AppStyle.homeDefaultBlockText(),
      ),
      TextButton(
        onPressed: () {},
        child: Text(
          'More >>',
          style: AppStyle.homeDefaultBlockText(),
        ),
      ),
    ],
  );
}

AppBar customAppbar(String appBarText) {
  return AppBar(
    backgroundColor: AppbarBackgroundColor,
    centerTitle: centerTitle,
    elevation: noElevation,
    iconTheme: IconThemeData(color: defaultIconColor),
    title: Text(
      appBarText,
      style: AppStyle.AppbarTextStyle(),
    ),
  );
}

Widget DisplayAllHomeViews() {
  return Padding(
    padding: const EdgeInsets.all(defaultSpace * 2),
    child: Column(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomBlock(showIcon: true),
            SizedBox(height: defaultSpace),
            CustomBlock(showIcon: false),
          ],
        ),
        SizedBox(
          height: defaultSpace,
        ),
        DisplayHomeMessage(),
        DisplayCarCard(),
      ],
    ),
  );
}
