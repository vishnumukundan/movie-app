// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../../../../components/text.dart';
import '../../../../themes/colors.dart';
import '../../../../themes/values.dart';

class BottomNavbarItem__widget extends StatelessWidget {
  const BottomNavbarItem__widget({
    Key? key,
    this.icon,
    required this.label,
    required this.onTap,
    this.isActive = false,
  }) : super(key: key);

  final icon;
  final String label;
  final VoidCallback onTap;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        curve: Curves.linear,
        padding: EdgeInsets.symmetric(
          vertical: isActive ? 12.0 : 8.0,
          horizontal: isActive ? 20.0 : 16.0,
        ),
        decoration: BoxDecoration(
          color: isActive ? kColorAccent : Colors.transparent,
          borderRadius: BorderRadius.circular(60.0),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon.svg(
              height: isActive ? 24.0 : 32.0,
              width: isActive ? 24.0 : 32.0,
              color: kColorWhite,
            ),
            const SizedBox(width: kDefaultPadding / 4),
            Regular__text(
              text: isActive ? label : '',
              fontSize: 14.0,
              height: 1.6,
            )
          ],
        ),
      ),
    );
  }
}
