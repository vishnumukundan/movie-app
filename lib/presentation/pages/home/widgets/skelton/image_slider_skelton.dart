// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:movie_app/presentation/components/skelton.dart';
import 'package:movie_app/presentation/themes/values.dart';

class ImageSliderSkelton__widget extends StatelessWidget {
  const ImageSliderSkelton__widget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Skelton__widget(
      child: Container(
        decoration: const BoxDecoration(color: kSkeltonColor),
      ),
    );
  }
}
