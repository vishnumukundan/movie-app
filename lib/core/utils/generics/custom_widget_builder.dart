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
    this.height,
    this.width,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.scrollPhysics = const ScrollPhysics(),
    this.reverse,
    this.reverseList = false,
  }) : super(key: key);

  final Axis scrollDirection;
  final double contentSpacing;
  final ScrollController? controller;
  final int? itemCount;
  final Clip clipBehavior;
  IndexedWidgetBuilder builder;
  final EdgeInsets? padding;
  final double? height;
  final double? width;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final ScrollPhysics scrollPhysics;
  final bool? reverse;
  final bool reverseList;

  final items = <Widget>[];

  @override
  Widget build(BuildContext context) {
    if (itemCount! > 0) {
      late int i;
      for (i = 0; i < itemCount! - 1; i++) {
        items.add(Padding(
          padding: scrollDirection == Axis.vertical
              ? EdgeInsets.only(bottom: contentSpacing)
              : EdgeInsets.only(right: contentSpacing),
          child: builder(context, i),
        ));
      }
      if (i == itemCount! - 1) {
        items.add(builder(context, i));
      }
    }

    return SizedBox(
      height: height,
      width: width,
      child: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        scrollDirection: scrollDirection,
        padding: padding,
        controller: controller,
        clipBehavior: clipBehavior,
        physics: scrollPhysics,
        reverse: reverse ?? false,
        child: getDirection(
            scrollDirection, reverseList ? items.reversed.toList() : items),
      ),
    );
  }

  getDirection(Axis direction, List<Widget> items) {
    if (direction == Axis.vertical) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: mainAxisAlignment,
        crossAxisAlignment: crossAxisAlignment,
        children: items,
      );
    }
    if (direction == Axis.horizontal) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: mainAxisAlignment,
        crossAxisAlignment: crossAxisAlignment,
        children: items,
      );
    } else {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: items,
      );
    }
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
    this.dataList,
    required this.itemCount,
    required this.builder,
    this.reverseList = false,
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
  final List? dataList;
  final int itemCount;
  final IndexedWidgetBuilder builder;
  final bool reverseList;

  final items = <Widget>[];

  @override
  Widget build(BuildContext context) {
    // if (dataList!.isNotEmpty) {
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
      children: reverseList ? items.reversed.toList() : items,
    );
    // } else {
    //   return Container();
    // }
  }
}
