// ignore_for_file: camel_case_types, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/utils/generics/custom_scroll_behavior.dart';
import 'package:movie_app/data/bloc/actor_profile/person_details_bloc.dart';
import 'package:movie_app/gen/assets.gen.dart';
import 'package:movie_app/presentation/components/background.dart';
import 'package:movie_app/presentation/components/button.dart';
import 'package:movie_app/presentation/components/image_container.dart';
import 'package:movie_app/presentation/components/movie_list_scroll.dart';
import 'package:movie_app/presentation/components/text.dart';
import 'package:movie_app/presentation/pages/actor_profile/widgets/biogarphy_bottomsheet.dart';
import 'package:movie_app/presentation/pages/actor_profile/widgets/skelton/actor_profile_skelton.dart';
import 'package:movie_app/presentation/pages/actor_profile/widgets/title_and_data.dart';
import 'package:movie_app/presentation/themes/colors.dart';
import 'package:movie_app/presentation/themes/screen_size_config.dart';
import 'package:movie_app/presentation/themes/values.dart';

import '../../../components/inner_appbars/appbar_with_back_button.dart';

class ActorProfilePage extends StatelessWidget {
  const ActorProfilePage({
    Key? key,
    required this.personId,
  }) : super(key: key);

  final int personId;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context
          .read<PersonDetailsBloc>()
          .add(GetPersonDetails(personId: personId));
      context.read<PersonDetailsBloc>().add(GetMovieList(personId: personId));
    });
    return Scaffold(
      body: Background(
        child: Stack(
          children: [
            ScrollConfiguration(
              behavior: CustomScroll(),
              child: SingleChildScrollView(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                child: BlocBuilder<PersonDetailsBloc, PersonDetailsState>(
                  builder: (context, state) {
                    final _data = state.personData!;

                    final bool hasErrorOrNull =
                        state.hasError || _data.profilePath == null;
                    if (state.isLoading) {
                      return const ActorProfileSkelton__widget();
                    }
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: getScreenHeightPercentage(18.0),
                            bottom: kDefaultPadding / 2,
                            left: kDefaultPadding * 2,
                            right: kDefaultPadding * 2,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              if (hasErrorOrNull)
                                Container(
                                  height: getScreenWidthPercentage(45.0),
                                  width: getScreenWidthPercentage(30.0),
                                  decoration: BoxDecoration(
                                    color: kColorPrimaryTint_3,
                                    boxShadow: const [
                                      BoxShadow(
                                        color: kColorPrimary,
                                        offset: Offset(10, 10),
                                        blurRadius: 20,
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Assets.icons.person.svg(
                                      width: getScreenWidthPercentage(15.0)),
                                ),
                              if (state.success && _data.profilePath != null)
                                ImageContainer__widget(
                                  radius: 8,
                                  imageData: _data.profilePath ?? '',
                                  height: getScreenWidthPercentage(45.0),
                                  width: getScreenWidthPercentage(30.0),
                                  boxshadow: const [
                                    BoxShadow(
                                      color: kColorPrimary,
                                      offset: Offset(10, 10),
                                      blurRadius: 20,
                                    ),
                                  ],
                                ),
                              const SizedBox(width: kDefaultPadding * 1.5),
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                        height: kDefaultPadding * 1.33),
                                    Medium__text(
                                      text: _data.name ?? 'Name',
                                      fontSize: 18.0,
                                      maxLines: 2,
                                      textOverFlow: TextOverflow.ellipsis,
                                      height: 1.2,
                                    ),
                                    TitleAndData__widget(
                                      title: 'Known For',
                                      data: _data.knownForDepartment ??
                                          '(no data)',
                                    ),
                                    TitleAndData__widget(
                                      title: 'Films',
                                      data: state.movieDataList!.totalResults
                                          .toString(),
                                    ),
                                    TitleAndData__widget(
                                        title: 'Birthday',
                                        data: _data.birthday ?? '(no data)'),
                                    TitleAndData__widget(
                                        title: 'Place of Birth',
                                        data:
                                            _data.placeOfBirth ?? '(no data)'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: kDefaultPadding * 3),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 32),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Medium__text(
                                  text: 'Biography', fontSize: 16.0),
                              const SizedBox(height: kDefaultPadding / 2),
                              Medium__text(
                                text: _data.biography != ''
                                    ? _data.biography!
                                    : 'no data',
                                fontSize: 12.0,
                                height: 1.4,
                                letterSpacing: 0.9,
                                color: kColorWhite60,
                                maxLines: 10,
                                textOverFlow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: kDefaultPadding / 2),
                              Visibility(
                                visible:
                                    state.personData!.biography!.length > 400,
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: GestureDetector(
                                    onTap: () {
                                      showModalBottomSheet(
                                        context: context,
                                        backgroundColor: Colors.transparent,
                                        barrierColor:
                                            kColorPrimary.withOpacity(0.5),
                                        builder: (context) {
                                          return BiogarphyBottomsheet__widget(
                                            text: _data.biography!.toString(),
                                          );
                                        },
                                      );
                                    },
                                    child: Medium__text(
                                      text: 'Read More',
                                      fontSize: 14.0,
                                      color: kColorWhite.withOpacity(0.8),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        MovieListScroll__widget(
                          title: 'Known for',
                          dataList: state.movieDataList!.results,
                          itemCount: state.movieDataList!.totalResults >= 10
                              ? 10
                              : state.movieDataList!.totalResults,
                        ),
                        const SizedBox(height: kDefaultPadding),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Accent_Large__button(
                              text: 'View All Movies',
                              cornerRadius: 60.0,
                              rightIcon: Assets.icons.arrowRight,
                              onTap: () {},
                            ),
                          ],
                        ),
                        const SizedBox(height: kDefaultPadding * 2),
                      ],
                    );
                  },
                ),
              ),
            ),
            const AppbarWithBackButton__widget(text: 'Actor Profile'),
          ],
        ),
      ),
    );
  }
}
