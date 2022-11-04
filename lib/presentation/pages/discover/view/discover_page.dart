import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/data/bloc/discover/discover_bloc.dart';
import 'package:movie_app/presentation/bloc/navigation_from/navigation_from_bloc.dart';
import 'package:movie_app/presentation/components/blurred_background.dart';
import 'package:movie_app/presentation/components/text.dart';
import 'package:movie_app/presentation/pages/discover/widgets/genres_grid.dart';
import 'package:movie_app/presentation/pages/discover/widgets/persons_grid.dart';
import 'package:movie_app/presentation/pages/movies_result_grid/view/movies_result_grid_page.dart';
import 'package:movie_app/presentation/themes/colors.dart';
import 'package:movie_app/presentation/themes/values.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<DiscoverBloc>().add(const DiscoverEvent.getPopularPersons());
    });
    //
    //
    context.read<NavigationFromBloc>().add(
        const NavigationFromEvent.setNavigationFrom(
            navigateFrom: NavigateFrom.posterGrid));

    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: const [
              SizedBox(height: 56),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
                child: Medium__text(text: 'Genres', fontSize: 16.0),
              ),
              SizedBox(height: kDefaultPadding),
              GenresGrid__widget(),
              SizedBox(height: kDefaultPadding * 3),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
                child: Medium__text(text: 'Actors Popular Now', fontSize: 16.0),
              ),
              SizedBox(height: kDefaultPadding),
              PersonsGrid__widget(),
              SizedBox(height: 116),
            ],
          ),
        ),
        BlurredBackground__widget(
          color: kColorWhite.withOpacity(0.0),
          child: Container(height: 35),
        ),
      ],
    );
  }
}
