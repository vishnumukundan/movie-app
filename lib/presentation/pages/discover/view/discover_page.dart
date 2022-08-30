import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/generics/app_route/custom_scroll_behavior.dart';
import 'package:movie_app/core/utils/generics/custom_widget_builder.dart';
import 'package:movie_app/data/sources/dummy/dummy_data.dart';
import 'package:movie_app/data/sources/remote_data_sources/api_end_points.dart';
import 'package:movie_app/presentation/components/blurred_background.dart';
import 'package:movie_app/presentation/components/text.dart';
import 'package:movie_app/presentation/themes/colors.dart';
import 'package:movie_app/presentation/themes/screen_size_config.dart';
import 'package:movie_app/presentation/themes/values.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: CustomScroll(),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 56),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
              child: Medium__text(text: 'Genres', fontSize: 16.0),
            ),
            const SizedBox(height: kDefaultPadding),
            CustomGridViewBuilder(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              dataList: genresDataList,
              crossAxisCount: 2,
              mainAxisSpacing: kDefaultPadding,
              crossAxisSpacing: kDefaultPadding,
              childAspectRatio: 7 / 3,
              itemCount: genresDataList.length,
              shrinkWrap: true,
              builder: (context, index) {
                return Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: kColorWhite50,
                    borderRadius: BorderRadius.circular(kDefaultPadding / 2),
                    image: DecorationImage(
                      image: NetworkImage(
                        ApiEndPoints.image(
                            moviePosterDummyData[index]["poster_path"]),
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: BlurredBackground__widget(
                    color: kColorPrimary.withOpacity(0.1),
                    blur: 17.0,
                    borderRadius: BorderRadius.circular(kDefaultPadding / 2),
                    child: Center(
                      child: SemiBold__text(
                          text: '${genresDataList[index]['name']}',
                          fontSize: 16.0),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: kDefaultPadding * 3),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
              child: Medium__text(text: 'Actors', fontSize: 16.0),
            ),
            const SizedBox(height: kDefaultPadding),
            CustomGridViewBuilder(
              padding: const EdgeInsets.symmetric(
                horizontal: kDefaultPadding * 2,
              ),
              crossAxisCount: 3,
              dataList: personDummyData,
              mainAxisSpacing: kDefaultPadding,
              crossAxisSpacing: kDefaultPadding,
              childAspectRatio: 3 / 4,
              shrinkWrap: true,
              itemCount: 15,
              builder: (context, index) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ClipOval(
                      child: Container(
                        height: getScreenWidthPercentage(20.0),
                        width: getScreenWidthPercentage(20.0),
                        decoration: BoxDecoration(
                          color: kColorWhite50,
                          image: DecorationImage(
                              image: NetworkImage(ApiEndPoints.image(
                                  personDummyData[index]["profile_path"])),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    const SizedBox(height: kDefaultPadding / 2),
                    SemiBold__text(
                      text: '${personDummyData[index]["name"]}',
                      fontSize: 12.0,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      textOverFlow: TextOverflow.ellipsis,
                      height: 1.2,
                    )
                  ],
                );
              },
            ),
            const SizedBox(height: 116),
          ],
        ),
      ),
    );
  }
}
