import 'package:flutter/material.dart';
import 'package:movie_app/data/sources/remote_data_sources/api_end_points.dart';

import '../themes/colors.dart';

class ImageContainer__widget extends StatelessWidget {
  const ImageContainer__widget({
    Key? key,
    required this.imageData,
    required this.index,
    required this.height,
    required this.width,
    this.radius,
    this.boxshadow,
  }) : super(key: key);

  final dynamic imageData;
  final int index;
  final double height;
  final double width;
  final double? radius;
  final List<BoxShadow>? boxshadow;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: kColorPrimary,
        boxShadow: boxshadow,
        borderRadius: BorderRadius.circular(radius ?? 0.0),
        image: DecorationImage(
          image:
              NetworkImage(ApiEndPoints.image(imageData[index]["poster_path"])),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
