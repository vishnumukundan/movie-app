import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/generics/app_route/custom_scroll_behavior.dart';
import 'package:movie_app/core/utils/generics/navigator.dart';
import 'package:movie_app/gen/assets.gen.dart';
import 'package:movie_app/presentation/components/background.dart';
import 'package:movie_app/presentation/components/blurred_background.dart';
import 'package:movie_app/presentation/components/text.dart';
import 'package:movie_app/presentation/themes/values.dart';

import '../themes/screen_size_config.dart';

class BasicBottomsheet__widget extends StatelessWidget {
  const BasicBottomsheet__widget({
    Key? key,
    required this.children,
  }) : super(key: key);

  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Background(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(kDefaultPadding * 2),
          topRight: Radius.circular(kDefaultPadding * 2),
        ),
        child: Stack(
          children: [
            ScrollConfiguration(
              behavior: CustomScroll(),
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: kDefaultPadding * 2,
                    top: getScreenHeightPercentage(13.0),
                    right: kDefaultPadding * 2,
                    bottom: kDefaultPadding,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: children,
                  ),
                ),
              ),
            ),
            BlurredBackground__widget(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(kDefaultPadding * 2),
                topRight: Radius.circular(kDefaultPadding * 2),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: kDefaultPadding * 2,
                  top: kDefaultPadding * 1.5,
                  right: kDefaultPadding * 2,
                  bottom: kDefaultPadding,
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Medium__text(text: 'Biography', fontSize: 16.0),
                    ),
                    GestureDetector(
                      onTap: () => PageNav.pop(context),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Assets.icons.close.svg(
                          height: 24,
                          width: 24,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}