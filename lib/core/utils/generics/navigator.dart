import 'package:flutter/material.dart';

class PageNav {
  push(BuildContext context, screen) {
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => screen));
  }

  pop(BuildContext context) {
    Navigator.pop(context);
  }

  popUntil(BuildContext context) {
    Navigator.popUntil(context, (route) => false);
  }
}
