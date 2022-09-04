import 'package:flutter/material.dart';
import 'package:movie_app/data/sources/dummy/dummy_data.dart';
import 'package:movie_app/presentation/themes/screen_size_config.dart';

import '../../../components/image_container.dart';
import '../../../themes/values.dart';

class ImageStack__widget extends StatelessWidget {
  ImageStack__widget({Key? key}) : super(key: key);

  final _dataList = moviePosterDummyData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Positioned(
            left: 0,
            child: Transform.scale(
              scale: 0.8,
              child: ImageContainer__widget(
                imageData: _dataList[1]["poster_path"],
                height: getScreenHeightPercentage(30.0),
                width: getScreenHeightPercentage(20.0),
                radius: 8.0,
                boxshadow: kDefaultBoxShadow,
              ),
            ),
          ),
          Positioned(
            right: 0,
            child: Transform.scale(
              scale: 0.8,
              child: ImageContainer__widget(
                imageData: _dataList[2]["poster_path"],
                height: getScreenHeightPercentage(30.0),
                width: getScreenHeightPercentage(20.0),
                radius: 8.0,
                boxshadow: kDefaultBoxShadow,
              ),
            ),
          ),
          ImageContainer__widget(
            imageData: _dataList[0]["poster_path"],
            height: getScreenHeightPercentage(30.0),
            width: getScreenHeightPercentage(20.0),
            radius: 8.0,
            boxshadow: kDefaultBoxShadow,
          ),
        ],
      ),
    );
  }
}
