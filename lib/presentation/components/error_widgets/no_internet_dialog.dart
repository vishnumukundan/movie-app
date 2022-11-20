// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movie_app/gen/assets.gen.dart';
import 'package:movie_app/presentation/components/button.dart';
import 'package:movie_app/presentation/components/text.dart';
import 'package:movie_app/presentation/themes/colors.dart';
import 'package:movie_app/presentation/themes/values.dart';

showNoInternetDialog(BuildContext ctx) {
  showGeneralDialog(
    context: ctx,
    barrierDismissible: false,
    pageBuilder: (ctx, animation, secondaryAnimation) => Scaffold(
      body: Container(
        padding: const EdgeInsets.all(kDefaultPadding * 2),
        color: kColorPrimary,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Assets.images.noSignal.image(),
            const SizedBox(height: kDefaultPadding * 3),
            const SemiBold__text(text: 'No Internet', fontSize: 24.0),
            const SizedBox(height: kDefaultPadding),
            const Regular__text(
              text: 'We found that you are not connencted to the internet',
              fontSize: 16.0,
              textAlign: TextAlign.center,
              height: 1.4,
            ),
            const SizedBox(height: kDefaultPadding * 2),
            Accent_Medium__button(
              text: 'Refresh',
              onTap: () {},
            ),
            const SizedBox(height: kDefaultPadding),
            Primary_Medium__button(
                text: 'Exit App', onTap: () => SystemNavigator.pop()),
            const SizedBox(height: kDefaultPadding),
          ],
        ),
      ),
    ),
  );
}
