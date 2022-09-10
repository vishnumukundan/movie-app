import 'package:flutter/material.dart';
import 'package:movie_app/gen/assets.gen.dart';
import 'package:movie_app/presentation/components/background.dart';
import 'package:movie_app/presentation/pages/profile/widgets/profile_menu_item.dart';
import 'package:movie_app/presentation/pages/profile/widgets/referal_card.dart';

import '../../../../core/utils/generics/custom_widget_builder.dart';
import '../../../../data/sources/dummy/dummy_data.dart';
import '../../../components/person_image_and_name_card.dart';
import '../../../components/text.dart';
import '../../../themes/colors.dart';
import '../../../themes/screen_size_config.dart';
import '../../../themes/values.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          //
          // countinue watching section
          Container(
            height: getScreenHeightPercentage(40.0),
            width: ScreenConfig.screenWidth,
            color: kColorPrimaryTint_1,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: kDefaultPadding * 3),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: kDefaultPadding * 2),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Medium__text(
                        text: 'Whose Watching',
                        fontSize: 16.0,
                      ),
                      const Spacer(),
                      Assets.icons.edit.svg(height: 20.0, width: 20.0),
                    ],
                  ),
                ),
                const SizedBox(height: kDefaultPadding),
                CustomListViewBuilder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  contentSpacing: 8.0,
                  builder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: index == 0 ? kColorWhite20 : Colors.transparent,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: PersonImageAndNameCard__widget(
                        width: getScreenHeightPercentage(10.0),
                        maxLines: 1,
                        textOverflow: TextOverflow.ellipsis,
                        image: userDummyData[index]["profile_path"],
                        name: userDummyData[index]["name"],
                        onTap: () {},
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          //
          // menu section
          Align(
            alignment: Alignment.bottomCenter,
            child: Background(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(kDefaultPadding * 2),
                topRight: Radius.circular(kDefaultPadding * 2),
              ),
              height: getScreenHeightPercentage(70.0),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: kDefaultPadding * 2,
                  left: kDefaultPadding * 2,
                  right: kDefaultPadding * 2,
                  bottom: kDefaultPadding * 6,
                ),
                child: SizedBox(
                  height: getScreenHeightPercentage(52.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        const ReferalCard__widget(),
                        const SizedBox(height: kDefaultPadding),
                        ProfileMenuItem__widget(
                          icon: Assets.icons.tune,
                          text: 'App Settings',
                        ),
                        ProfileMenuItem__widget(
                          icon: Assets.icons.manageAccounts,
                          text: 'Account Settings',
                        ),
                        ProfileMenuItem__widget(
                          icon: Assets.icons.help,
                          text: 'Help',
                        ),
                        ProfileMenuItem__widget(
                          icon: Assets.icons.logout,
                          text: 'Sign Out',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
