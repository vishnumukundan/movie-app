// ignore_for_file: use_build_context_synchronously, constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/services/navigator.dart';
import 'package:movie_app/core/utils/generics/dialoge_and_snackbar_strings.dart';
import 'package:movie_app/presentation/bloc/main/bottom_navbar/botom_nav_cubit.dart';
import 'package:movie_app/presentation/components/snackbar/snackbar.dart';
import 'package:movie_app/presentation/pages/login/view/login_page.dart';
import 'package:movie_app/presentation/pages/main/view/main_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String LOGIN_STATUS = 'isLogin';

inputValidation(value) {
  if (value == null || value.isEmpty) {
    return 'Value is empty';
  } else if (value.length <= 3) {
    return 'minimum 4 charecters required';
  } else {
    return null;
  }
}

userLogin(BuildContext context, String username, String password) async {
  if (username == password) {
    final pref = await SharedPreferences.getInstance();
    pref.setBool(LOGIN_STATUS, true);
    PageNav.pushAndReplace(context, MainPage());
  } else {
    const Snackbar__widget(
      message: SnackBarMessage.credentialsNotMatch,
    ).buildSnackBar();
  }
}

gotoLogin(BuildContext context) {
  Future.delayed(const Duration(seconds: 3), () {
    PageNav.pushAndReplace(context, const LoginPage());
  });
}

Future<void> chechkUserLoggedIn(BuildContext context) async {
  final pref = await SharedPreferences.getInstance();
  final userLoggedIn = pref.getBool(LOGIN_STATUS);
  if (userLoggedIn == null || userLoggedIn == false) {
    gotoLogin(context);
  } else {
    PageNav.pushAndReplace(context, MainPage());
  }
}

signOut(BuildContext context) async {
  final pref = await SharedPreferences.getInstance();
  await pref.clear();
  context.read<BottomNavCubit>().setIndex(0);
  PageNav.pushAndRemoveUntil(context, const LoginPage());
}
