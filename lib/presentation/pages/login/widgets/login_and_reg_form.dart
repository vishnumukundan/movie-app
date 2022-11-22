// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:movie_app/core/services/login_service.dart';
import 'package:movie_app/core/utils/generics/dialoge_and_snackbar_strings.dart';
import 'package:movie_app/presentation/components/button.dart';
import 'package:movie_app/presentation/components/snackbar/snackbar.dart';

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
//
  final _formKey = GlobalKey<FormState>();
  final _isDataMatched = true;
  //
  @override
  Widget build(BuildContext context) {
    if (_isSignup) {
      return Form(
        key: _formKey,
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
        key: _formKey,
        child: Column(
          children: [
            TextField__widget(
              hint: 'Username',
              prefixIcon: Assets.icons.user,
              controller: _usernameController,
              validator: (value) => inputValidation(value),
              onChanged: (value) => _formKey.currentState!.validate(),
            ),
            TextField__widget(
              hint: 'Password',
              prefixIcon: Assets.icons.password,
              controller: _passwordController,
              obscureText: true,
              validator: (value) => inputValidation(value),
            ),
            Row(
              children: <Widget>[
                Primary_Large__button(
                  text: 'SignUp',
                  // onTap: () => setState(() => _isSignup = true),
                  onTap: () {
                    const Snackbar__widget(
                      message: SnackBarMessage.noSignupPage,
                    ).buildSnackBar();
                  },
                ),
                const SizedBox(width: kDefaultPadding),
                Expanded(
                  child: Accent_Large__button(
                    text: 'Login',
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        userLogin(
                          context,
                          _usernameController.text,
                          _passwordController.text,
                        );
                      } else {
                        return;
                      }
                    },
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
