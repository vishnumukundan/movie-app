// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:movie_app/presentation/themes/colors.dart';

import '../../../components/text.dart';

class TitleWithToggle__widget extends StatefulWidget {
  const TitleWithToggle__widget({Key? key}) : super(key: key);

  @override
  State<TitleWithToggle__widget> createState() =>
      _TitleWithToggle__widgetState();
}

bool _buttonstate = false;

class _TitleWithToggle__widgetState extends State<TitleWithToggle__widget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 32,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Medium__text(text: 'Watch List', fontSize: 16.0),
          const Spacer(),
          const Regular__text(text: 'Downloaded Only', fontSize: 14.0),
          Switch(
              activeColor: kColorAccent,
              activeTrackColor: kColorWhite.withOpacity(0.8),
              value: _buttonstate,
              onChanged: (value) {
                setState(() => _buttonstate = !_buttonstate);
              })
        ],
      ),
    );
  }
}
