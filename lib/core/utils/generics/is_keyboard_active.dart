import 'package:flutter/material.dart';

bool isKeyboardActive(context) {
  if (!(MediaQuery.of(context).viewInsets.bottom == 0.0)) {
    return true;
  } else {
    return false;
  }
}
