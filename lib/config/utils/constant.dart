import '../../presentation/screen/widget/export_widget.dart';

const double splashLogoContainerWith = 200.0;
const double splashLogoContainerHeight = 180.0;
const double btnSpaceEscape = 15.0;
const double defaultSpace = 10.0;
const double flagSizeWith = 25.0;
const double flagSizeHeight = 20.0;
const double cardBtnSizeWitdh = 40.0;
const double cardBtnSizeheight = 40.0;
const double dividerThickness = 2.0;
const double noElevation = 0.0;
const double notificationCardHeight = 70.0;

// Tailles de bouton
const double customAuthBtnWidth = 250.0;
const double customAuthBtnHeight = 50.0;
const double customBorderWidth = 1.0;
const double customSelectLanguageWidth = 300.0;
const double customSelectLanguageHeight = 50.0;

// Polices et styles de texte
const double fontsize_10 = 10;
const double fontsize_15 = 15;
const double fontsize_20 = 20;
const double fontsize_30 = 30;
const String defaultFontFamily = 'Poppins';

// Styles de texte
const FontWeight fontWeight_300 = FontWeight.w300;
const FontWeight fontWeight_400 = FontWeight.w400;
const FontWeight fontWeight_500 = FontWeight.w500;
const FontWeight fontWeight_bold = FontWeight.bold;

// Paramètres d'appbar
const bool centerTitle = true;
const String homeScreenAppbarTitle = "Home Screen";
const String notificationAppBartitle = "Notification";
const String profileAppBartitle = "My Profile";

// Dimensions du tiroir (Drawer)
const double drawerAvatarRadius = 40;
const double drawerHorizontalPadding = 25;
const double drawerVerticalPadding = 25;
const double drawerAvatarSpacing = 16;

// URL de l'image du tiroir (Drawer)
const String drawerAvatarImageUrl =
    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fsalondesmaires-gard.com%2Fspeaker%2Fjohn-doe%2F&psig=AOvVaw3mB_jiGNcMuuGjPJ8hA-AU&ust=1697720823726000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCMiFh4fV_4EDFQAAAAAdAAAAABAE';

// Dimensions de la carte (Card)
final cardBorderRadius = BorderRadius.circular(defaultSpace);
final cardImageBorderRadius = BorderRadius.circular(10.0);
final double cardImageHeight = 120.0;
final double cardImageWidth = 160.0;
final double cardEditButtonWidth = 40.0;
final double cardEditButtonHeight = 20.0;

final drawerHomeItems = [
  DrawerItem(
    icon: Icons.book,
    title: 'View Contract',
    onTap: () {
      // Action when 'View Contract' is tapped
    },
  ),
  DrawerItem(
    icon: Icons.help_center,
    title: 'Help Center',
    onTap: () {
      // Action when 'Help Center' is tapped
    },
  ),
  DrawerItem(
    icon: Icons.policy_outlined,
    title: 'Terms and Conditions',
    onTap: () {
      // Action when 'Terms and Conditions' is tapped
    },
  ),
  DrawerItem(
    icon: Icons.privacy_tip_outlined,
    title: 'Privacy Policy',
    onTap: () {
      // Action when 'Privacy Policy' is tapped
    },
  ),
  DrawerItem(
    icon: Icons.toggle_off_outlined,
    title: 'Switch to Driver',
    onTap: () {
      // Action when 'Switch to Driver' is tapped
    },
  ),
];

final profileItems = [
  DrawerItem(
    icon: Icons.person,
    title: 'profile',
    onTap: () {
    },
  ),
  DrawerItem(
    icon: Icons.manage_accounts_outlined,
    title: 'Manage Car LEase',
    onTap: () {
    },
  ),
  DrawerItem(
    icon: Icons.lock_outlined,
    title: 'Change Password',
    onTap: () {
    },
  ),
  DrawerItem(
    icon: Icons.language_outlined,
    title: 'Change Language',
    onTap: () {
    },
  ),
  DrawerItem(
    icon: Icons.logout_outlined,
    title: 'Logout',
    onTap: () {
    },
  ),
  DrawerItem(
    icon: Icons.delete_outline,
    title: 'Delete Account',
    onTap: () {
    },
  ),
];

// Utilisation de AllDrawerItem avec les éléments du tiroir

