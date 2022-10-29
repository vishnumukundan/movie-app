// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../data/bloc/actor_profile/person_details_bloc.dart' as _i18;
import '../../../data/bloc/home/image_slider/image_slider_bloc.dart' as _i15;
import '../../../data/bloc/login/login_poster/login_poster_bloc.dart' as _i16;
import '../../../data/bloc/movie_details/movie_details_bloc.dart' as _i17;
import '../../../data/bloc/upcoming_movies/upcoming_movies_bloc.dart' as _i19;
import '../../../data/repositories/actor_profile/actor_profile_repo.dart'
    as _i12;
import '../../../data/repositories/home/image_slider/image_slider_repo.dart'
    as _i4;
import '../../../data/repositories/home/image_slider/movie_list/movie_list_repo.dart'
    as _i10;
import '../../../data/repositories/login/login_poster_repo.dart' as _i6;
import '../../../data/repositories/movie_details/movie_details_repo.dart'
    as _i8;
import '../../../data/repositories/upcoming_movies/upcoming_movies_repo.dart'
    as _i14;
import '../../repositories/actor_profile/i_actor_profile_repo.dart' as _i11;
import '../../repositories/home/image_slider/i_image_slider_repo.dart' as _i3;
import '../../repositories/home/movie_sroll_list/i_movie_list_repo.dart' as _i9;
import '../../repositories/login/i_login_poster_repo.dart' as _i5;
import '../../repositories/movie_details/i_movie_details_repo.dart' as _i7;
import '../../repositories/upcoming_movies/i_upcoming_movies_repo.dart'
    as _i13; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IImageSliderRepo>(() => _i4.ImageSliderRepository());
  gh.lazySingleton<_i5.ILoginImagesRepo>(() => _i6.LoginPosterRepository());
  gh.lazySingleton<_i7.IMovieDetailsRepo>(() => _i8.MovieDetailsRepository());
  gh.lazySingleton<_i9.IMovieListRepo>(() => _i10.MovieScrollListRepository());
  gh.lazySingleton<_i11.IPersonDetailsRepo>(
      () => _i12.PersonDetailsRepository());
  gh.lazySingleton<_i13.IUpcomingMoviesRepo>(
      () => _i14.UpcomingMoviesRepository());
  gh.factory<_i15.ImageSliderBloc>(
      () => _i15.ImageSliderBloc(get<_i3.IImageSliderRepo>()));
  gh.factory<_i16.LoginPosterBloc>(
      () => _i16.LoginPosterBloc(get<_i5.ILoginImagesRepo>()));
  gh.factory<_i17.MovieDetailsBloc>(
      () => _i17.MovieDetailsBloc(get<_i7.IMovieDetailsRepo>()));
  gh.factory<_i18.PersonDetailsBloc>(() => _i18.PersonDetailsBloc(
      get<_i11.IPersonDetailsRepo>(), get<_i9.IMovieListRepo>()));
  gh.factory<_i19.UpcomingMoviesBloc>(
      () => _i19.UpcomingMoviesBloc(get<_i13.IUpcomingMoviesRepo>()));
  return get;
}
