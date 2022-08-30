// ignore_for_file: must_be_immutable

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

//
//ListView Builder
class CustomListViewBuilder extends StatelessWidget {
  CustomListViewBuilder({
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

//
//GridView Builder

enum Behavior { down, start }

class CustomGridViewBuilder extends StatelessWidget {
  CustomGridViewBuilder({
    Key? key,
    this.scrollDirection = Axis.vertical,
    this.reverse = false,
    this.controller,
    this.primary,
    this.physics = const ScrollPhysics(),
    this.shrinkWrap = false,
    this.padding,
    required this.crossAxisCount,
    this.mainAxisSpacing = 0.0,
    this.crossAxisSpacing = 0.0,
    this.childAspectRatio = 1.0,
    this.addAutomaticKeepAlives = true,
    this.addRepaintBoundaries = true,
    this.addSemanticIndexes = true,
    this.cacheExtent,
    this.semanticChildCount,
    this.keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual,
    this.restorationId,
    this.clipBehavior = Clip.hardEdge,
    this.dragStartBehavior = DragStartBehavior.start,
    //
    required this.dataList,
    required this.itemCount,
    required this.builder,
  }) : super(key: key);

  final Axis scrollDirection;
  final bool reverse;
  final ScrollController? controller;
  final bool? primary;
  final ScrollPhysics? physics;
  final bool shrinkWrap;
  final EdgeInsetsGeometry? padding;
  final int crossAxisCount;
  final double mainAxisSpacing;
  final double crossAxisSpacing;
  final double childAspectRatio;
  final bool addAutomaticKeepAlives;
  final bool addRepaintBoundaries;
  final bool addSemanticIndexes;
  final double? cacheExtent;
  final int? semanticChildCount;
  final ScrollViewKeyboardDismissBehavior keyboardDismissBehavior;
  final String? restorationId;
  final Clip clipBehavior;
  final DragStartBehavior dragStartBehavior;
  //
  final List dataList;
  final int itemCount;
  final IndexedWidgetBuilder builder;
  final items = <Widget>[];

  @override
  Widget build(BuildContext context) {
    if (dataList.isNotEmpty) {
      for (int i = 0; i < itemCount; i++) {
        items.add(builder(context, i));
      }
      return GridView.count(
        crossAxisCount: crossAxisCount,
        scrollDirection: scrollDirection,
        reverse: reverse,
        controller: controller,
        primary: primary,
        physics: physics,
        shrinkWrap: shrinkWrap,
        padding: padding,
        mainAxisSpacing: mainAxisSpacing,
        crossAxisSpacing: crossAxisSpacing,
        childAspectRatio: childAspectRatio,
        addAutomaticKeepAlives: addAutomaticKeepAlives,
        addRepaintBoundaries: addRepaintBoundaries,
        addSemanticIndexes: addSemanticIndexes,
        cacheExtent: cacheExtent,
        semanticChildCount: semanticChildCount,
        keyboardDismissBehavior: keyboardDismissBehavior,
        restorationId: restorationId,
        clipBehavior: clipBehavior,
        dragStartBehavior: dragStartBehavior,
        children: items,
      );
    } else {
      return Container();
    }
  }
}