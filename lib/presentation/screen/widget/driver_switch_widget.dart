import 'package:taxiliz/config/utils/constant.dart';
import 'export_widget.dart';

class DriverSwitchWidget extends StatefulWidget {
  @override
  _DriverSwitchWidgetState createState() => _DriverSwitchWidgetState();
}

class _DriverSwitchWidgetState extends State<DriverSwitchWidget> {
  bool isDriverSwitched = false; // État initial : désactivé

  void toggleDriverSwitch() {
    setState(() {
      isDriverSwitched = !isDriverSwitched; // Inverse l'état actuel
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomDrawerListile(
      icon: isDriverSwitched ? toggleOnIcon : toggleOffIcon,
      title: isDriverSwitched ? 'Switched to Driver' : 'Switch to Driver',
      onTap: toggleDriverSwitch, // Appeler la fonction pour basculer l'état
    );
  }
}
