// import 'package:flutter/material.dart';
// import 'package:form_control/config/colors.dart';
// import 'package:form_control/config/values.dart';

// class TextFormField__widget extends StatelessWidget {
//   const TextFormField__widget({
//     Key? key,
//     required this.controller,
//     required this.onChange,
//     this.hintText,
//     this.validator,
//   }) : super(key: key);

//   ///
//   ///
//   final TextEditingController controller;
//   final String? hintText;
//   final String? validator;
//   final onChange;

//   ///

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       controller: controller,
//       onChanged: onChange,
//       decoration: InputDecoration(
//         contentPadding: const EdgeInsets.all(kPaddingNormal),
//         filled: true,
//         fillColor: Colors.indigo.shade50,
//         focusColor: kColorWhite,
//         hintText: hintText,
//         border: const OutlineInputBorder(
//             borderSide: BorderSide.none,
//             borderRadius: BorderRadius.all(Radius.circular(kSizeBase))),
//         focusedBorder: const OutlineInputBorder(
//           borderRadius: BorderRadius.all(Radius.circular(kSizeBase)),
//         ),
//       ),
//       validator: (value) {
//         return validator;
//       },
//     );
//   }
// }
