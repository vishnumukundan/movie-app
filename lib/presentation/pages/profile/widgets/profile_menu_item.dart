// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../../../components/text.dart';
import '../../../themes/colors.dart';
import '../../../themes/values.dart';

class ProfileMenuItem__widget extends StatelessWidget {
  const ProfileMenuItem__widget({
    Key? key,
    required this.icon,
    required this.text,
    this.onTap,
  }) : super(key: key);

  final icon;
  final String text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Container(
          padding: const EdgeInsets.all(kDefaultPadding),
          decoration: BoxDecoration(
            color: kColorWhite10,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: <Widget>[
              icon.svg(),
              const SizedBox(width: kDefaultPadding / 2),
              Regular__text(
                text: text,
                fontSize: 14.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
