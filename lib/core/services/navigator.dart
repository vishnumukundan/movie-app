import 'package:flutter/material.dart';

class PageNav {
  static push(BuildContext context, page) {
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => page));
  }

  static pushAndReplace(BuildContext context, page) {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (ctx) => page));
  }

  static pop(BuildContext context) {
    Navigator.pop(context);
  }

  static popUntil(BuildContext context) {
    Navigator.popUntil(context, (route) => false);
  }

  static pushAndRemoveUntil(BuildContext context, page) {
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => page), (route) => false);
  }
}
