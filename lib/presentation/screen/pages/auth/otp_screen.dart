// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:taxiliz/config/theme/theme.dart';
// import 'package:taxiliz/config/utils/export_utils.dart';

// import '../../widget/auth/custom_auth_btn.dart';
// import '../../widget/utils/custom_image_container.dart';

// class OtpScreen extends StatefulWidget {
//   const OtpScreen({super.key});

//   @override
//   State<OtpScreen> createState() => _OtpScreenState();
// }

// class _OtpScreenState extends State<OtpScreen> {
//   @override
//   List<TextEditingController> _controllers =
//       List.generate(4, (index) => TextEditingController());

//   @override
//   void dispose() {
//     for (var controller in _controllers) {
//       controller.dispose();
//     }
//     super.dispose();
//   }

//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         centerTitle: true,
//         title: Text('Verify with OTP',
//             style: CustomTextStyle(textColor: kBlack).customText),
//       ),
//       body: Container(
//         decoration: globalGradientDecoration,
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               buildContainerWithImage(),
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text('Please Enter the 4 Digit code sent to\nyour Email Id',
//                       textAlign: TextAlign.center,
//                       style: CustomTextStyle(textColor: kBlack).customText),
//                   SizedBox(
//                     height:  defaultPadding * 2,
//                   ),
//                 ],
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   for (var i = 0; i < 4; i++)
//                     Container(
//                       width: 70,
//                       height: 50,
//                       margin: EdgeInsets.symmetric(horizontal: 10),
//                       child: TextField(
//                         controller: _controllers[i],
//                         textAlign: TextAlign.center,
//                         keyboardType: TextInputType.number,
//                         decoration: InputDecoration(
//                           filled: true,
//                           fillColor: kWhite,
//                           contentPadding: EdgeInsets.zero,
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular( defaultPadding),
//                             borderSide: BorderSide(width: 2, color: kBlack),
//                           ),
//                         ),
//                         onChanged: (value) {
//                           if (value.length == 1) {
//                             if (i < 3) {
//                               FocusScope.of(context).nextFocus();
//                             }
//                           }
//                         },
//                       ),
//                     ),
//                 ],
//               ),
//               Text.rich(
//                 TextSpan(
//                   children: [
//                     TextSpan(text: 'Resend OTP', style: resendOTPTitleStyle),
//                     TextSpan(text: '00:30', style: resendOTPTimerStyle),
//                   ],
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//               SizedBox(
//                 height:  defaultPadding,
//               ),
//               customButton('Continue', true)
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
