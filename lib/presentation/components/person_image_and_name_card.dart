// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:movie_app/gen/assets.gen.dart';
import 'package:movie_app/presentation/components/text.dart';

import '../../data/sources/remote_data_sources/api_end_points.dart';
import '../themes/colors.dart';
import '../themes/screen_size_config.dart';
import '../themes/values.dart';

class PersonImageAndNameCard__widget extends StatelessWidget {
  PersonImageAndNameCard__widget({
    Key? key,
    this.image,
    required this.name,
    required this.onTap,
    this.maxLines,
    this.width,
    this.textOverflow,
    required this.isLoading,
  }) : super(key: key);

  final String? image;
  final String name;
  final bool isLoading;
  final double? width;
  final VoidCallback onTap;
  final int? maxLines;
  final TextOverflow? textOverflow;

  final double _width = getScreenWidthPercentage(20.0);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          ClipOval(
            child: image == null
                ? Container(
                    height: width ?? _width,
                    width: width ?? _width,
                    decoration: const BoxDecoration(
                      color: kColorWhite20,
                    ),
                    child: Center(
                      child: Assets.icons.person.svg(
                        color: kColorWhite,
                        height: _width / 1.5,
                      ),
                    ),
                  )
                : Container(
                    height: width ?? _width,
                    width: width ?? _width,
                    decoration: BoxDecoration(
                      color: kColorWhite20,
                      image: DecorationImage(
                          image: NetworkImage(
                            ApiDataFetching.image(image!, ImageWidth.w92),
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
          ),
          const SizedBox(height: kDefaultPadding / 2),
          SizedBox(
            width: width ?? _width,
            child: SemiBold__text(
              text: name,
              fontSize: 12.0,
              textAlign: TextAlign.center,
              maxLines: maxLines ?? 2,
              textOverFlow: textOverflow ?? TextOverflow.ellipsis,
              height: 1.2,
            ),
          )
        ],
      ),
    );
  }
}
