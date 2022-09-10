// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import 'colors.dart';
import 'values.dart';

class TextFormField__widget extends StatelessWidget {
  const TextFormField__widget({
    Key? key,
    required this.hint,
    this.prefixIcon,
    required this.controller,
  }) : super(key: key);

  final String hint;
  final prefixIcon;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: hint,
        hintStyle: kHintTextStyle,
        labelStyle: kLabelTextStyle,
      ),
      cursorColor: kColorWhite,
    );
  }
}
