// ignore_for_file: camel_case_types, no_leading_underscores_for_local_identifiers, must_be_immutable, invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member, prefer_final_fields, await_only_futures

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/services/app_default_preferences.dart';
import 'package:movie_app/core/services/debouncer.dart';
import 'package:movie_app/core/services/navigator.dart';
import 'package:movie_app/data/bloc/search_result/search_result_bloc.dart';
import 'package:movie_app/gen/assets.gen.dart';
import 'package:movie_app/presentation/bloc/components/inner_appbars/bloc/appbar_search_bloc.dart';
import 'package:movie_app/presentation/themes/colors.dart';
import 'package:movie_app/presentation/themes/screen_size_config.dart';

import '../../themes/values.dart';
import '../blurred_background.dart';

class AppbarSearch__widget extends StatelessWidget {
  AppbarSearch__widget({
    Key? key,
  }) : super(key: key);

  FocusNode _focus = FocusNode();
  final TextEditingController _controller = TextEditingController();
  //
  bool _isFocused = false;

  final _debouncer = Debouncer(milliseconds: 1 * 1000);
  int _iconIndex = 0;
  //
  @override
  Widget build(BuildContext context) {
    //
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {},
    );
    // _focus.addListener(() {
    //   updateState(context);
    // });

    //
    getIconIndex();
    //
    //

    return BlurredBackground__widget(
      color: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.only(
          left: kDefaultPadding * 2,
          top: getScreenHeightPercentage(8.0),
          right: kDefaultPadding * 2,
          bottom: kDefaultPadding / 2,
        ),
        child: Row(
          children: <Widget>[
            // back button
            GestureDetector(
              onTap: () {
                PageNav.pop(context);
                updateState(context, false);
              },
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Assets.icons.arrowLeft.svg(color: kColorWhite),
              ),
            ),
            const SizedBox(width: kDefaultPadding / 2),

            // text field
            Expanded(
              child: GestureDetector(
                onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
                child: TextField(
                  onChanged: (value) => _debouncer.run(() {
                    context
                        .read<SearchResultBloc>()
                        .add(SearchResultEvent.getSearchedMovies(query: value));
                  }),
                  onTap: () => updateState(context, true),
                  textInputAction: TextInputAction.search,
                  focusNode: _focus,
                  controller: _controller,
                  cursorColor: kColorWhite,
                  decoration: const InputDecoration(
                    isDense: true,
                    border: InputBorder.none,
                    hintText: 'Search here...',
                    hintStyle: TextStyle(
                      color: kColorWhite80,
                      fontFamily: kFontFamily,
                      fontSize: 16,
                    ),
                    labelStyle: TextStyle(
                      color: kColorWhite,
                      fontFamily: kFontFamily,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: kDefaultPadding),
            BlocBuilder<AppbarSearchBloc, AppbarSearchState>(
                builder: (context, state) {
              return IndexedStack(
                index: state.isTextFieldFocused == true ? 1 : 0,
                alignment: Alignment.centerRight,
                children: [
                  // mic icon
                  Assets.icons.mic
                      .svg(width: 24, height: 24, color: kColorWhite),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // close icon
                      GestureDetector(
                        onTap: () => _controller.clear(),
                        child: Assets.icons.close.svg(height: 24),
                      ),
                      const SizedBox(width: kDefaultPadding / 2),

                      // column icon stack
                      // const MovieGridLayoutButton__widget(),
                    ],
                  ),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }

  updateState(BuildContext context, bool isTextFieldFocused) {
    context.read<AppbarSearchBloc>().add(AppbarSearchEvent.userTappedTextField(
          isTextFieldFocused: isTextFieldFocused,
        ));
    //
    context
        .read<AppbarSearchBloc>()
        .add(AppbarSearchEvent.columnButtonPress(columnIconIndex: _iconIndex));
  }
}
