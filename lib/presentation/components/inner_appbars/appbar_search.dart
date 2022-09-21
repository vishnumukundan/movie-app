// ignore_for_file: camel_case_types, no_leading_underscores_for_local_identifiers, must_be_immutable, invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/utils/generics/navigator.dart';
import 'package:movie_app/gen/assets.gen.dart';
import 'package:movie_app/presentation/bloc/components/inner_appbars/appbar_search/appbar_search_cubit.dart';
import 'package:movie_app/presentation/themes/colors.dart';
import 'package:movie_app/presentation/themes/screen_size_config.dart';

import '../../themes/values.dart';
import '../blurred_background.dart';

class AppbarSearch__widget extends StatelessWidget {
  AppbarSearch__widget({
    Key? key,
  }) : super(key: key);

  FocusNode _focus = FocusNode();
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _isFocused = context.watch<AppbarSearchCubit>().state.focusEnabled;
    final int _iconIndex = context.watch<AppbarSearchCubit>().state.iconIndex;

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
            IndexedStack(
              index: _isFocused == true ? 1 : 0,
              alignment: Alignment.centerLeft,
              children: [
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Assets.icons.search.svg(),
                ),
                GestureDetector(
                  onTap: () {
                    PageNav.pop(context);
                    Future.delayed(Duration(milliseconds: 300), () {
                      context.read<AppbarSearchCubit>().emit(
                            const AppbarSearchState.initial(
                                focusEnabled: false),
                          );
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Assets.icons.arrowLeft.svg(color: kColorWhite),
                  ),
                ),
              ],
            ),
            const SizedBox(width: kDefaultPadding / 2),
            Expanded(
              child: TextField(
                onTap: () {
                  context.read<AppbarSearchCubit>().isFocused();
                },
                focusNode: _focus,
                controller: _controller,
                cursorColor: kColorWhite,
                decoration: const InputDecoration(
                  isDense: true,
                  border: InputBorder.none,
                  hintText: 'Search here',
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
            const SizedBox(width: kDefaultPadding),
            IndexedStack(
              index: _isFocused == true ? 1 : 0,
              alignment: Alignment.centerRight,
              children: [
                Assets.icons.mic.svg(width: 24, height: 24, color: kColorWhite),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () => _controller.clear(),
                      child: Assets.icons.close.svg(height: 24),
                    ),
                    const SizedBox(width: kDefaultPadding / 2),
                    IndexedStack(
                      index: _iconIndex,
                      children: [
                        GestureDetector(
                          onTap: () {
                            context.read<AppbarSearchCubit>().setIconIndex(1);
                          },
                          child: Assets.icons.column2
                              .svg(width: 32, height: 32, color: kColorWhite50),
                        ),
                        GestureDetector(
                          onTap: () {
                            context.read<AppbarSearchCubit>().setIconIndex(0);
                          },
                          child: Assets.icons.column3
                              .svg(width: 32, height: 32, color: kColorWhite50),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
