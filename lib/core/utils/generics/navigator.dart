import 'package:flutter/material.dart';

class PageNav {
  static push(BuildContext context, screen) {
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => screen));
  }

  static pushAndReplace(BuildContext context, screen) {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (ctx) => screen));
  }

  static pop(BuildContext context) {
    Navigator.pop(context);
  }

  static popUntil(BuildContext context) {
    Navigator.popUntil(context, (route) => false);
  }
}
