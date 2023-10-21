import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:taxiliz/config/utils/export_utils.dart';
import 'package:taxiliz/presentation/screen/widget/export_widget.dart';

class UserTypeSelection extends StatefulWidget {
  const UserTypeSelection({super.key});

  @override
  State<UserTypeSelection> createState() => _UserTypeSelectionState();
}

class _UserTypeSelectionState extends State<UserTypeSelection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(chooseUserTypeappBartitle),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 170, // Largeur augmentée
              height: 170, // Hauteur augmentée
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10), // Bordure de 10
                border: Border.all(
                    width: 1.0, color: Colors.black), // Largeur de bordure de 1
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(height: 10), // Espace autour de l'image
                  Padding(
                    padding: const EdgeInsets.only(left: 4, right: 4),
                    child: Image.asset(
                      Localfiles.driver,
                    ),
                  ),
                  SizedBox(height: 10), // Espace entre l'image et le texte
                  Text(
                    'Continue as Driver',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25, // Police augmentée
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10), // Espace autour du texte
                ],
              ),
            ),
            Container(
              width: 170, // Largeur augmentée
              height: 170, // Hauteur augmentée
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10), // Bordure de 10
                border: Border.all(
                    width: 1.0, color: Colors.black), // Largeur de bordure de 1
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(height: 10), // Espace autour de l'image
                  Padding(
                    padding: const EdgeInsets.only(left: 4, right: 4),
                    child: Image.asset(
                      Localfiles.investor,
                    ),
                  ),
                  SizedBox(height: 10), // Espace entre l'image et le texte
                  Text(
                    'Continue as Investor',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold // Police augmentée
                        ),
                  ),
                  SizedBox(height: 10), // Espace autour du texte
                ],
              ),
            ),
            SizedBox(height: 16),
            customAuthBtn('Continue', true),
          ],
        ),
      ),
    );
  }
}
