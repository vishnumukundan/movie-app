import 'package:flutter/material.dart';

import '../../../components/basic_bottomsheet.dart';
import '../../../components/text.dart';

final String lorem =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Accumsan tortor posuere ac ut consequat semper viverra nam. Nisi lacus sed viverra tellus in hac habitasse platea dictumst. Vitae aliquet nec ullamcorper sit amet risus nullam. Eget nunc lobortis mattis aliquam faucibus purus in massa tempor. A lacus vestibulum sed arcu non. Ornare quam viverra orci sagittis eu volutpat odio facilisis mauris. Gravida cum sociis natoque penatibus et magnis dis parturient. Sagittis vitae et leo duis. Dolor magna eget est lorem ipsum dolor sit. Amet nisl purus in mollis nunc sed id semper. Feugiat scelerisque varius morbi enim nunc faucibus. Amet tellus cras adipiscing enim eu turpis egestas pretium aenean. Turpis in eu mi bibendum neque. Quisque non tellus orci ac. Tempus urna et pharetra pharetra massa massa ultricies mi. Pellentesque pulvinar pellentesque habitant morbi.';

class BiogarphyBottomsheet__widget extends StatelessWidget {
  const BiogarphyBottomsheet__widget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BasicBottomsheet__widget(
      children: [
        Medium__text(
          text: lorem,
          fontSize: 14.0,
          height: 1.4,
        ),
      ],
    );
    ;
  }
}
