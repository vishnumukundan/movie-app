// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/core/services/navigator.dart';
import 'package:movie_app/presentation/components/button.dart';
import 'package:movie_app/presentation/pages/main/view/main_page.dart';
import 'package:movie_app/presentation/themes/colors.dart';

import '../../../../gen/assets.gen.dart';
import '../../../themes/values.dart';
import 'text_field.dart';

class LoginAndRegForm__widget extends StatefulWidget {
  const LoginAndRegForm__widget({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginAndRegForm__widget> createState() =>
      _LoginAndRegForm__widgetState();
}

class _LoginAndRegForm__widgetState extends State<LoginAndRegForm__widget> {
  bool _isSignup = false;

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    if (_isSignup) {
      return Form(
        child: Column(
          children: [
            TextField__widget(
              hint: 'Name',
              prefixIcon: Assets.icons.user,
              controller: _usernameController,
            ),
            TextField__widget(
              hint: 'Email',
              prefixIcon: Assets.icons.email,
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
            ),
            TextField__widget(
              hint: 'Password',
              prefixIcon: Assets.icons.password,
              controller: _passwordController,
              obscureText: true,
            ),
            Row(
              children: <Widget>[
                Primary_Large__button(
                  text: 'Login',
                  onTap: () => setState(() => _isSignup = false),
                ),
                const SizedBox(width: kDefaultPadding),
                Expanded(
                  child: Accent_Large__button(
                    text: 'SignUp',
                    // onTap: () => PageNav.pushAndReplace(context, MainPage()),
                    onTap: () {},
                  ),
                ),
              ],
            )
          ],
        ),
      );
    } else {
      return Form(
        child: Column(
          children: [
            TextField__widget(
              hint: 'Username',
              // initialValue: 'user@email.com',
              prefixIcon: Assets.icons.user,
              controller: _usernameController..text = 'user@email.com',
              keyboardType: TextInputType.emailAddress,
            ),
            TextField__widget(
              hint: 'Password',
              prefixIcon: Assets.icons.password,
              controller: _passwordController..text = 'user1234',
              obscureText: true,
            ),
            Row(
              children: <Widget>[
                Primary_Large__button(
                  text: 'SignUp',
                  // onTap: () => setState(() => _isSignup = true),
                  onTap: () {
                    Get.snackbar(
                      'Not available',
                      'There isn\'t currently a signup page. Thank you for your patience. We are attempting to fix it.',
                      snackPosition: SnackPosition.BOTTOM,
                      duration: const Duration(seconds: 5),
                      isDismissible: true,
                      backgroundColor: kColorPrimary,
                    );
                  },
                ),
                const SizedBox(width: kDefaultPadding),
                Expanded(
                  child: Accent_Large__button(
                    text: 'Login',
                    onTap: () => PageNav.pushAndReplace(context, MainPage()),
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }
  }
}
