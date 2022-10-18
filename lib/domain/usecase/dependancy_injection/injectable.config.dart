// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../data/bloc/home/image_slider/image_slider_bloc.dart' as _i9;
import '../../../data/bloc/login/login_poster/login_poster_bloc.dart' as _i10;
import '../../../data/bloc/movie_details/movie_details_bloc.dart' as _i11;
import '../../../data/repositories/home/image_slider/image_slider_repo.dart'
    as _i4;
import '../../../data/repositories/login/login_poster_repo.dart' as _i6;
import '../../../data/repositories/movie_details/movie_details_repo.dart'
    as _i8;
import '../../repositories/home/image_slider/i_image_slider_repo.dart' as _i3;
import '../../repositories/login/i_login_poster_repo.dart' as _i5;
import '../../repositories/movie_details/i_movie_details_repo.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IImageSliderRepo>(() => _i4.ImageSliderRepository());
  gh.lazySingleton<_i5.ILoginImagesRepo>(() => _i6.LoginPosterRepository());
  gh.lazySingleton<_i7.IMovieDetailsRepo>(() => _i8.MovieDetailsRepository());
  gh.factory<_i9.ImageSliderBloc>(
      () => _i9.ImageSliderBloc(get<_i3.IImageSliderRepo>()));
  gh.factory<_i10.LoginPosterBloc>(
      () => _i10.LoginPosterBloc(get<_i5.ILoginImagesRepo>()));
  gh.factory<_i11.MovieDetailsBloc>(
      () => _i11.MovieDetailsBloc(get<_i7.IMovieDetailsRepo>()));
  return get;
}
