// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../data/bloc/actor_profile/person_details_bloc.dart' as _i25;
import '../../../data/bloc/discover/discover_bloc.dart' as _i27;
import '../../../data/bloc/home/home_data/home_data_bloc.dart' as _i28;
import '../../../data/bloc/home/image_slider/image_slider_bloc.dart' as _i21;
import '../../../data/bloc/login/login_poster/login_poster_bloc.dart' as _i22;
import '../../../data/bloc/movie_details/movie_details_bloc.dart' as _i23;
import '../../../data/bloc/movies_result_grid/movies_result_grid_bloc.dart'
    as _i24;
import '../../../data/bloc/upcoming_movies/upcoming_movies_bloc.dart' as _i26;
import '../../../data/repositories/actor_profile/actor_profile_repo.dart'
    as _i4;
import '../../../data/repositories/discover/discover_repo.dart' as _i6;
import '../../../data/repositories/home/home_repo.dart' as _i8;
import '../../../data/repositories/home/image_slider/image_slider_repo.dart'
    as _i10;
import '../../../data/repositories/home/movie_list/movie_list_repo.dart'
    as _i16;
import '../../../data/repositories/login/login_poster_repo.dart' as _i12;
import '../../../data/repositories/movie_details/movie_details_repo.dart'
    as _i14;
import '../../../data/repositories/movies_result_grid/movies_result_grid_repo.dart'
    as _i18;
import '../../../data/repositories/upcoming_movies/upcoming_movies_repo.dart'
    as _i20;
import '../../repositories/actor_profile/i_actor_profile_repo.dart' as _i3;
import '../../repositories/dicover/i_discover_repo.dart' as _i5;
import '../../repositories/home/i_home_repo.dart' as _i7;
import '../../repositories/home/image_slider/i_image_slider_repo.dart' as _i9;
import '../../repositories/home/movie_sroll_list/i_movie_list_repo.dart'
    as _i15;
import '../../repositories/login/i_login_poster_repo.dart' as _i11;
import '../../repositories/movie_details/i_movie_details_repo.dart' as _i13;
import '../../repositories/movies_result_grid/i_movies_result_grid_repo.dart'
    as _i17;
import '../../repositories/upcoming_movies/i_upcoming_movies_repo.dart'
    as _i19; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IActorProfileRepo>(() => _i4.PersonDetailsRepository());
  gh.lazySingleton<_i5.IDiscoverRepo>(() => _i6.DiscoverRepository());
  gh.lazySingleton<_i7.IHomeRepo>(() => _i8.HomeRepository());
  gh.lazySingleton<_i9.IImageSliderRepo>(() => _i10.ImageSliderRepository());
  gh.lazySingleton<_i11.ILoginImagesRepo>(() => _i12.LoginPosterRepository());
  gh.lazySingleton<_i13.IMovieDetailsRepo>(() => _i14.MovieDetailsRepository());
  gh.lazySingleton<_i15.IMovieListRepo>(() => _i16.MovieScrollListRepository());
  gh.lazySingleton<_i17.IMoviesResultGridRepo>(
      () => _i18.MoviesResultGridRepository());
  gh.lazySingleton<_i19.IUpcomingMoviesRepo>(
      () => _i20.UpcomingMoviesRepository());
  gh.factory<_i21.ImageSliderBloc>(
      () => _i21.ImageSliderBloc(get<_i9.IImageSliderRepo>()));
  gh.factory<_i22.LoginPosterBloc>(
      () => _i22.LoginPosterBloc(get<_i11.ILoginImagesRepo>()));
  gh.factory<_i23.MovieDetailsBloc>(
      () => _i23.MovieDetailsBloc(get<_i13.IMovieDetailsRepo>()));
  gh.factory<_i24.MoviesResultGridBloc>(
      () => _i24.MoviesResultGridBloc(get<_i17.IMoviesResultGridRepo>()));
  gh.factory<_i25.PersonDetailsBloc>(() => _i25.PersonDetailsBloc(
      get<_i3.IActorProfileRepo>(), get<_i15.IMovieListRepo>()));
  gh.factory<_i26.UpcomingMoviesBloc>(
      () => _i26.UpcomingMoviesBloc(get<_i19.IUpcomingMoviesRepo>()));
  gh.factory<_i27.DiscoverBloc>(
      () => _i27.DiscoverBloc(get<_i5.IDiscoverRepo>()));
  gh.factory<_i28.HomeDataBloc>(() => _i28.HomeDataBloc(get<_i7.IHomeRepo>()));
  return get;
}
