// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:movie_app/core/services/navigator.dart';
import 'package:movie_app/presentation/components/button.dart';
import 'package:movie_app/presentation/components/text.dart';
import 'package:movie_app/presentation/themes/colors.dart';
import 'package:movie_app/presentation/themes/values.dart';

showErrorDialog(BuildContext ctx, String errorMessage, VoidCallback onRefresh) {
  Future.delayed(const Duration(milliseconds: 1000 * 1), () {
    showDialog(
      context: ctx,
      barrierDismissible: false,
      builder: (ctx) => AlertDialog(
        // title: const SemiBold__text(text: 'Network Issue', fontSize: 16.0),
        icon: const Icon(
          Icons.warning_rounded,
          size: kDefaultPadding * 8,
          color: kColorWhite50,
        ),
        contentPadding: const EdgeInsets.all(kDefaultPadding * 1.5),
        content: Regular__text(text: errorMessage, fontSize: 16.0, height: 1.4),
        actions: [
          Accent_Medium__button(
            text: 'Refresh',
            onTap: onRefresh,
          ),
          const SizedBox(height: kDefaultPadding / 2),
          Primary_Medium__button(text: 'Exit', onTap: () => PageNav.pop(ctx)),
          const SizedBox(height: kDefaultPadding),
        ],
        actionsAlignment: MainAxisAlignment.center,
        actionsPadding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        backgroundColor: kColorPrimary,
      ),
    );
  });
}
