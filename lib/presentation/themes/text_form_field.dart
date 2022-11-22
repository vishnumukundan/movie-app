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
    this.validator,
    this.initialValue,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.onChanged,
  }) : super(key: key);

  final String hint;

  final String? initialValue;
  final prefixIcon;
  final TextEditingController controller;
  final bool obscureText;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      obscureText: obscureText,
      controller: controller,
      keyboardType: keyboardType,
      validator: validator,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: hint,
        hintStyle: kHintTextStyle,
        labelStyle: kLabelTextStyle,
        errorStyle: kErrorTextStyle,
      ),
      cursorColor: kColorWhite,
      onChanged: onChanged,
    );
  }
}
