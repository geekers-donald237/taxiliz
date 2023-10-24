import '../../config/utils/export_utils.dart';
import '../screen/widget/checbox_with_text.dart';
import '../screen/widget/custom_select.dart';
import '../screen/widget/custom_textfield.dart';
import '../screen/widget/lease_period.dart';
import '../screen/widget/utils/reusable_other.dart';

final loginScreenInput = [
  CustomTextField(
    icon: emailIcon,
    hintText: 'Email',
  ),
  CustomTextField(
    icon: lockOutlinedIcon,
    hintText: 'Password',
    isPassword: true,
  ),
  buildForgetPasswordRow(),
];

final profileCustomInputs = [
  CustomTextField(
    icon: personIcon,
    hintText: 'Username',
  ),
  CustomTextField(
    icon: personIcon,
    hintText: 'Lastname',
  ),
  CustomTextField(
    icon: emailIcon,
    hintText: 'Email',
  ),
  CustomTextField(
    icon: phoneIcon,
    hintText: 'Mobile Number',
  ),
];

final changepwdCustomInputs = [
  CustomTextField(
    icon: lockOutlinedIcon,
    hintText: 'Old password',
    isPassword: true,
  ),
  CustomTextField(
    icon: lockOutlinedIcon,
    hintText: 'New password',
    isPassword: true,
  ),
  CustomTextField(
    icon: lockOutlinedIcon,
    hintText: 'Confirm password',
    isPassword: true,
  ),
];

final helpcenterInputForm = [
  CustomTextField(
    icon: personIcon,
    hintText: 'Full Name',
  ),
  CustomTextField(
    icon: emailIcon,
    hintText: 'Email',
  ),
  TextAreaWithLabel(
    labelText: 'Query ',
    controller: TextEditingController(),
    labelPositionIscentered: true,
  ),
];

final signInTextInputs = [
  CustomTextField(
    icon: personIcon,
    hintText: 'Username',
  ),
  CustomTextField(
    icon: personIcon,
    hintText: 'Lastname',
  ),
  CustomTextField(
    icon: emailIcon,
    hintText: 'Email',
  ),
  CustomTextField(
    icon: phoneIcon,
    hintText: 'Telephone',
  ),
  const DisplayCityAndCountrySelection(),
  CustomTextField(
    icon: lockOutlinedIcon,
    hintText: 'Password',
    isPassword: true,
  ),
  CustomTextField(
    icon: lockOutlinedIcon,
    hintText: 'Confirm Password',
    isPassword: true,
  ),
  CheckboxWithText(
    value: false,
    onChanged: (bool? value) {},
    text: "By signing up you accept the Terms of Service & Privacy Policy",
  ),
];

final forgetInput = [
  CustomTextField(
    icon: emailIcon,
    hintText: 'Email',
  ),
];

final newPassword = [
  CustomTextField(
    icon: lockOutlinedIcon,
    hintText: 'Password',
    isPassword: true,
  ),
  CustomTextField(
    icon: lockOutlinedIcon,
    hintText: 'Password',
    isPassword: true,
  ),
];

final addcardInputs = [
  CustomTextField(
    icon: driveEtaIcon,
    hintText: 'Add Title to your car',
  ),
  CustomTextField(
    icon: directionsCarIcon,
    hintText: 'Enter Car name & Model',
  ),
  CustomTextField(
    icon: emailIcon,
    hintText: 'Enter Miles Driven',
  ),
  LeasePeriodAmountInput(
    periodHintText: 'Lease Period',
    amountHintText: 'Lease Amount',
  ),
  const DisplayCityAndCountrySelection(),
  CustomTextField(
    icon: clearAllIcon,
    hintText: 'Add Frequency',
  ),
  FrequencyText(),
  const AddMoreFieldBtn(),
  TextAreaWithLabel(
    labelText: 'Description ',
    controller: TextEditingController(),
    labelPositionIscentered: false,
  ),
  ImageSliderWidget([
    Localfiles.carImg1,
    Localfiles.carImg2,
    Localfiles.carImg3,
  ]),
];
