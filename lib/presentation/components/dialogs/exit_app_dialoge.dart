// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:movie_app/presentation/components/button.dart';
import 'package:movie_app/presentation/components/text.dart';
import 'package:movie_app/presentation/themes/colors.dart';
import 'package:movie_app/presentation/themes/values.dart';

Future<bool> showExitAppDialoge(BuildContext ctx) async {
  bool? exitApp = await showDialog(
    context: ctx,
    builder: (ctx) => AlertDialog(
      backgroundColor: kColorPrimary,
      title: const Medium__text(text: 'Confirm Exit', fontSize: 16.0),
      content: const Regular__text(
          text: 'Are you sure to exit the application ?', fontSize: 14.0),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Primary_Small__button(
              text: 'No',
              onTap: () => Navigator.of(ctx).pop(false),
            ),
            const SizedBox(width: kDefaultPadding),
            Primary_Small__button(
              text: 'Yes',
              onTap: () => Navigator.of(ctx).pop(true),
            ),
          ],
        ),
      ],
      actionsPadding: const EdgeInsets.only(
        right: kDefaultPadding,
        bottom: kDefaultPadding,
      ),
    ),
  );
  return exitApp ?? false;
}
