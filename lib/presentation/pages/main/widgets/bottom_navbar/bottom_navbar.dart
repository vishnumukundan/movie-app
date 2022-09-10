// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/gen/assets.gen.dart';
import 'package:movie_app/presentation/pages/main/widgets/bottom_navbar/bottom_navbar_item.dart';
import 'package:movie_app/presentation/themes/colors.dart';
import 'package:movie_app/presentation/themes/screen_size_config.dart';
import 'package:movie_app/presentation/themes/values.dart';

import '../../../../bloc/main/bottom_navbar/botom_nav_cubit.dart';

class BottomNavbar__widget extends StatelessWidget {
  const BottomNavbar__widget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: kDefaultPadding * 1.5,
            horizontal: kDefaultPadding,
          ),
          width: ScreenConfig.screenWidth,
          height: 96,
          decoration: const BoxDecoration(
              color: kColorPrimaryTint_1,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              BottomNavbarItem__widget(
                icon: Assets.icons.home,
                label: 'Home',
                onTap: () =>
                    BlocProvider.of<BottomNavCubit>(context).setIndex(0),
                isActive:
                    context.watch<BottomNavCubit>().state.selectedIndex == 0,
              ),
              BottomNavbarItem__widget(
                icon: Assets.icons.discover,
                label: 'Discover',
                onTap: () =>
                    BlocProvider.of<BottomNavCubit>(context).setIndex(1),
                isActive:
                    context.watch<BottomNavCubit>().state.selectedIndex == 1,
              ),
              BottomNavbarItem__widget(
                icon: Assets.icons.heartFill,
                label: 'Watch List',
                onTap: () =>
                    BlocProvider.of<BottomNavCubit>(context).setIndex(2),
                isActive:
                    context.watch<BottomNavCubit>().state.selectedIndex == 2,
              ),
              BottomNavbarItem__widget(
                icon: Assets.icons.user,
                label: 'Profile',
                onTap: () =>
                    BlocProvider.of<BottomNavCubit>(context).setIndex(3),
                isActive:
                    context.watch<BottomNavCubit>().state.selectedIndex == 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
