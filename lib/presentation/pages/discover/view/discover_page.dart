import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/generics/app_route/custom_scroll_behavior.dart';
import 'package:movie_app/core/utils/generics/custom_widget_builder.dart';
import 'package:movie_app/core/utils/generics/navigator.dart';
import 'package:movie_app/data/sources/dummy/dummy_data.dart';
import 'package:movie_app/data/sources/remote_data_sources/api_end_points.dart';
import 'package:movie_app/presentation/components/blurred_background.dart';
import 'package:movie_app/presentation/components/person_image_and_name_card.dart';
import 'package:movie_app/presentation/components/text.dart';
import 'package:movie_app/presentation/pages/actor_profile/view/actor_profile_page.dart';
import 'package:movie_app/presentation/themes/colors.dart';
import 'package:movie_app/presentation/themes/screen_size_config.dart';
import 'package:movie_app/presentation/themes/values.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
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
                        image: CachedNetworkImageProvider(
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
                            text: genresDataList[index]['name'],
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
                  return PersonImageAndNameCard__widget(
                    image: personDummyData[index]["profile_path"],
                    name: personDummyData[index]["name"],
                    onTap: () {
                      PageNav.push(context, ActorProfilePage__widget());
                    },
                  );
                },
              ),
              const SizedBox(height: 116),
            ],
          ),
        ),
        BlurredBackground__widget(
          color: kColorWhite.withOpacity(0.0),
          child: Container(height: 35),
        ),
      ],
    );
  }
}
