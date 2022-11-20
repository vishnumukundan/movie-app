// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../../../themes/colors.dart';
import '../../../themes/text_form_field.dart';
import '../../../themes/values.dart';

class TextField__widget extends StatelessWidget {
  const TextField__widget({
    Key? key,
    required this.hint,
    required this.prefixIcon,
    required this.controller,
    this.initialValue,
    this.obscureText = false,
    this.keyboardType = TextInputType.none,
  }) : super(key: key);

  final String hint;
  final prefixIcon;
  final TextEditingController controller;
  final String? initialValue;
  final bool obscureText;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding),
      child: Container(
        decoration: BoxDecoration(
          color: kColorSecondary,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding,
            vertical: kDefaultPadding / 4,
          ),
          child: Row(
            children: [
              prefixIcon.svg(
                color: kColorWhite,
                height: 24.0,
                width: 24.0,
              ),
              const SizedBox(width: kDefaultPadding / 2),
              Expanded(
                child: TextFormField__widget(
                  hint: hint,
                  controller: controller,
                  initialValue: initialValue,
                  obscureText: obscureText,
                  keyboardType: keyboardType,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
