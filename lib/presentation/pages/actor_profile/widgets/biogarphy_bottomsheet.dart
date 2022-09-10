// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import '../../../components/basic_bottomsheet.dart';
import '../../../components/text.dart';

class BiogarphyBottomsheet__widget extends StatelessWidget {
  const BiogarphyBottomsheet__widget({Key? key, required this.text})
      : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return BasicBottomsheet__widget(
      children: [
        Medium__text(
          text: text,
          fontSize: 14.0,
          height: 1.4,
          letterSpacing: 0.9,
        ),
      ],
    );
  }
}
