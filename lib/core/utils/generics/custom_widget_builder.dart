import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../presentation/components/video_card_item.dart';

class CustomWidgetBuilder extends StatelessWidget {
  CustomWidgetBuilder({
    Key? key,
    this.scrollDirection = Axis.vertical,
    this.controller,
    this.clipBehavior = Clip.hardEdge,
    this.itemCount = 1,
    required this.builder,
    this.contentSpacing = 8.0,
    this.padding,
  }) : super(key: key);

  final Axis scrollDirection;
  final double contentSpacing;
  final ScrollController? controller;
  final int? itemCount;
  final Clip clipBehavior;
  IndexedWidgetBuilder builder;
  final EdgeInsets? padding;

  final items = <Widget>[];
  late Widget finalWidget;

  @override
  Widget build(BuildContext context) {
    if (itemCount! > 0) {
      for (int i = 0; i < itemCount!; i++) {
        items.add(builder(context, i));
        if (i < itemCount! - 1) {
          for (int j = 0; j < (itemCount! - 1); j++) {
            items.add(SizedBox.square(dimension: contentSpacing));
            break;
          }
        }
      }

      finalWidget = SingleChildScrollView(
        scrollDirection: scrollDirection,
        padding: padding,
        controller: controller,
        clipBehavior: clipBehavior,
        child: getDirection(scrollDirection, items),
      );
    }
    return finalWidget;
  }
}

getDirection(Axis direction, List<Widget> items) {
  if (direction == Axis.vertical) {
    return Column(children: items);
  }
  if (direction == Axis.horizontal) {
    return Row(children: items);
  } else {
    return Column(children: items);
  }
}
