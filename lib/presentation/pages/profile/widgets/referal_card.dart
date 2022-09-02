import 'package:flutter/material.dart';
import 'package:movie_app/gen/assets.gen.dart';
import 'package:movie_app/presentation/components/button.dart';
import 'package:movie_app/presentation/components/text.dart';
import 'package:movie_app/presentation/themes/colors.dart';
import 'package:movie_app/presentation/themes/values.dart';

class ReferalCard__widget extends StatelessWidget {
  const ReferalCard__widget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: kColorWhite10,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Assets.icons.chat.svg(),
              const SizedBox(width: kDefaultPadding / 2),
              const Regular__text(
                text: 'Tell Friends About Netflip.',
                fontSize: 16.0,
              ),
            ],
          ),
          const SizedBox(height: kDefaultPadding / 2),
          Medium__text(
            text:
                'Invite your friends to enjoy your favoutite shows and movies together.',
            fontSize: 12.0,
            height: 1.4,
            color: kColorWhite.withOpacity(0.6),
          ),
          const SizedBox(height: kDefaultPadding / 2),
          Row(
            children: <Widget>[
              Expanded(
                  child:
                      Primary_Medium__button(text: 'Copy Link', onTap: () {})),
              const SizedBox(width: kDefaultPadding / 2),
              Expanded(
                  child: Accent_Medium__button(text: 'Share', onTap: () {})),
            ],
          )
        ],
      ),
    );
  }
}
