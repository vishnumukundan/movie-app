// ignore_for_file: camel_case_types

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/data/sources/remote_data_sources/api_end_points.dart';

import '../themes/colors.dart';

class ImageContainer__widget extends StatelessWidget {
  const ImageContainer__widget({
    Key? key,
    required this.imageData,
    required this.height,
    required this.width,
    this.radius,
    this.boxshadow,
  }) : super(key: key);

  final dynamic imageData;
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
          image: CachedNetworkImageProvider(ApiEndPoints.image(imageData)),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
