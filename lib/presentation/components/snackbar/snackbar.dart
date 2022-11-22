// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/presentation/themes/colors.dart';
import 'package:movie_app/presentation/themes/values.dart';

class Snackbar__widget {
  const Snackbar__widget({
    required this.message,
    this.title,
    this.isDismissible,
  });

  final String? title;
  final String message;
  final bool? isDismissible;

  buildSnackBar() {
    return Get.snackbar(title ?? '', message,
        snackPosition: SnackPosition.BOTTOM,
        snackStyle: SnackStyle.GROUNDED,
        margin: const EdgeInsets.only(bottom: 0),
        duration: const Duration(seconds: 4),
        isDismissible: isDismissible ?? true,
        backgroundColor: kColorPrimary80,
        padding: title != null
            ? null
            : const EdgeInsets.only(
                bottom: kDefaultPadding,
                left: kDefaultPadding,
                right: kDefaultPadding,
              ),
        animationDuration: const Duration(milliseconds: 500));
  }
}
