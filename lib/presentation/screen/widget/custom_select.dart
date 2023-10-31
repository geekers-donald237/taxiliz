import '../../../config/theme/theme.dart';
import '../../../config/utils/export_utils.dart';
import 'custom_textfield.dart';

class CustomSelect extends StatelessWidget {
  final IconData icon;
  final String hinText;

  CustomSelect({required this.icon, required this.hinText});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomTextField(
        icon: icon,
        hintText: hinText,
      ),
    );
  }
}

class CountryCitySelection extends StatelessWidget {
  final String label;
  final ValueChanged<String?>? onChanged;

  CountryCitySelection({
    required this.label,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(bottom: defaultSpacing_5, top: defaultSpacing_5),
        decoration: BoxDecoration(
          color: AppStyle.kWhite,
          border: Border.all(
            color: AppStyle.kDefaultColor, 
            width: selectWitdh,           ),

          borderRadius: BorderRadius.circular(defaultSpacing), 
        ),
        padding: EdgeInsets.all(defaultSpacing), 
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label),
            Icon(
              arrowDropDownIcon,
              size: iconSize,
            ),
          ],
        ),
      ),
    );
  }
}

class DisplayCityAndCountrySelection extends StatelessWidget {
  const DisplayCityAndCountrySelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CountryCitySelection(
          label: 'Country',
          onChanged: (String? value) {},
        ),
        SizedBox(
          width: defaultSpacing_5,
        ),
        CountryCitySelection(
          label: 'City',
          onChanged: (String? value) {},
        ),
      ],
    );
  }
}

class FrequencyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          '(Weekly, Monthly, Quarterly)',
          style: TextStyle(
            color: AppStyle.kBlack,
            fontSize: fontsize_10,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}


class AddMoreFieldBtn extends StatelessWidget {
  const AddMoreFieldBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        decoration: BoxDecoration(
          color: AppStyle.kDefaultColor, // Couleur de fond grise
          border: Border.all(
            color: AppStyle.kDefaultColor, // Couleur de la bordure
            width: customBorderWidth, // Largeur de la bordure
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(
                  10.0), // Ajout d'espace entre le texte et la bordure
              child: Text(
                'Add More field',
                style: TextStyle(fontSize: 15, color: AppStyle.kWhite),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(
                  8.0), // Ajout d'espace entre l'icône et la bordure
              child: Icon(
                Icons.add,
                size: 24,
                color: AppStyle.kWhite,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class ImageSliderWidget extends StatelessWidget {
  final List<String> imagePaths;

  ImageSliderWidget(this.imagePaths);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppStyle.kDefaultColor,
      ),
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: imagePaths
            .map(
              (imagePath) => Column(
                children: [
                  Image.asset(
                    imagePath,
                    height: 120.0, // Ajustez la hauteur selon vos besoins
                    width: 160.0, // Ajustez la largeur selon vos besoins
                  ),
                  SizedBox(height: 16),
                ],
              ),
            )
            .toList(),
      ),
    );
  }
}


class ReceivedItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultSpacing_6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DriverInfo(),
              ContactButton(),
            ],
          ),
          SizedBox(width: 16),
          Divider(
            color: Colors.black,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}

class DriverInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(Localfiles.person),
        SizedBox(width: btnSpaceEscape),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Driver Name'),
            SizedBox(height: defaultSpacing_6),
            Text('Car Name'),
          ],
        ),
      ],
    );
  }
}

class ContactButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultSpacing_5),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppStyle.kBlack,
          width: customBorderWidth,
        ),
        borderRadius: BorderRadius.circular(doubleSpacing),
      ),
      child: ContactIcon(),
    );
  }
}

class ContactIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: AppStyle.kGreen,
              width: customBorderWidth,
            ),
            color: AppStyle.kGreen,
            borderRadius: BorderRadius.circular(doubleSpacing),
          ),
          child: Icon(
            Icons.phone_in_talk_outlined,
            size: 18,
            color: Colors.white,
          ),
        ),
        SizedBox(width: 8),
        Text(
          'Call',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}


