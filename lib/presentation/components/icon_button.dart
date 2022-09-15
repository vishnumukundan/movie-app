// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:movie_app/presentation/themes/colors.dart';

class IconButton__baseWidget extends StatelessWidget {
  const IconButton__baseWidget({
    Key? key,
    required this.icon,
    required this.iconSize,
    required this.iconColor,
    required this.padding,
    required this.borderRadius,
    required this.bgColor,
    required this.onTap,
  }) : super(key: key);

  final icon;
  final double iconSize;
  final Color iconColor;
  final double padding;
  final double borderRadius;
  final Color bgColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: icon.svg(width: iconSize, height: iconSize),
      ),
    );
  }
}

///
/// Variants
///

// Accent Large Button
class Accent_Large__IconButton extends IconButton__baseWidget {
  const Accent_Large__IconButton({
    required super.icon,
    required super.borderRadius,
    required super.onTap,
    //
    super.iconSize = 32.0,
    super.iconColor = kColorWhite,
    super.padding = 16.0,
    super.bgColor = kColorAccent,
  });
}

// Accent Medium Button
class Accent_Medium__IconButton extends IconButton__baseWidget {
  const Accent_Medium__IconButton({
    required super.icon,
    required super.borderRadius,
    required super.onTap,
    //
    super.iconSize = 32.0,
    super.iconColor = kColorWhite,
    super.padding = 8.0,
    super.bgColor = kColorAccent,
  });
}

// Primary Large Button
class Primary_Large__IconButton extends IconButton__baseWidget {
  const Primary_Large__IconButton({
    required super.icon,
    required super.borderRadius,
    required super.onTap,
    //
    super.iconSize = 32.0,
    super.iconColor = kColorWhite,
    super.padding = 16.0,
    super.bgColor = kColorWhite50,
  });
}

// Primary Medium Button
class Primary_Medium__IconButton extends IconButton__baseWidget {
  const Primary_Medium__IconButton({
    required super.icon,
    required super.borderRadius,
    required super.onTap,
    //
    super.iconSize = 24.0,
    super.iconColor = kColorWhite,
    super.padding = 12.0,
    super.bgColor = kColorWhite50,
  });
}
