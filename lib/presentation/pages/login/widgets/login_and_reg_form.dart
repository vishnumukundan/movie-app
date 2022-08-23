import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/generics/navigator.dart';
import 'package:movie_app/presentation/components/button.dart';
import 'package:movie_app/presentation/pages/home/view/home_page.dart';

import '../../../../gen/assets.gen.dart';
import '../../../themes/values.dart';
import 'text_field.dart';

class LoginAndRegForm__widget extends StatefulWidget {
  LoginAndRegForm__widget({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginAndRegForm__widget> createState() =>
      _LoginAndRegForm__widgetState();
}

class _LoginAndRegForm__widgetState extends State<LoginAndRegForm__widget> {
  bool _isSignup = false;

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    if (_isSignup) {
      return Form(
        child: Column(
          children: [
            TextField__widget(
              hint: 'Username',
              prefixIcon: Assets.icons.user,
              controller: _controller,
            ),
            TextField__widget(
              hint: 'Email',
              prefixIcon: Assets.icons.email,
              controller: _controller,
            ),
            TextField__widget(
              hint: 'Password',
              prefixIcon: Assets.icons.password,
              controller: _controller,
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
                    onTap: () => PageNav.pushAndReplace(context, HomePage()),
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
              prefixIcon: Assets.icons.user,
              controller: _controller,
            ),
            TextField__widget(
              hint: 'Password',
              prefixIcon: Assets.icons.password,
              controller: _controller,
            ),
            Row(
              children: <Widget>[
                Primary_Large__button(
                  text: 'SignUp',
                  onTap: () => setState(() => _isSignup = true),
                ),
                const SizedBox(width: kDefaultPadding),
                Expanded(
                  child: Accent_Large__button(
                    text: 'Login',
                    onTap: () => PageNav.pushAndReplace(context, HomePage()),
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
