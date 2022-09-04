// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../components/text.dart';
import '../../../themes/colors.dart';
import '../../../themes/values.dart';

class TitleAndData__widget extends StatelessWidget {
  const TitleAndData__widget({
    Key? key,
    required this.title,
    required this.data,
  }) : super(key: key);

  final String title;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: kDefaultPadding / 2),
        Regular__text(
          text: title,
          fontSize: 14.0,
          color: kColorWhite.withOpacity(0.6),
          height: 1.4,
          maxLines: 1,
          textOverFlow: TextOverflow.ellipsis,
        ),
        Regular__text(
          text: data,
          fontSize: 14.0,
          color: kColorWhite,
          height: 1.4,
          maxLines: 3,
          textOverFlow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
