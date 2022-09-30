// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../data/bloc/home/image_slider/image_slider_bloc.dart' as _i7;
import '../../../data/bloc/login/login_poster/login_poster_bloc.dart' as _i8;
import '../../../data/repositories/home/image_slider/image_slider_repo.dart'
    as _i4;
import '../../../data/repositories/login/login_poster_repo.dart' as _i6;
import '../../repositories/home/image_slider/i_image_slider_repo.dart' as _i3;
import '../../repositories/login/i_login_poster_repo.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IImageSliderRepo>(() => _i4.ImageSliderRepository());
  gh.lazySingleton<_i5.ILoginImagesRepo>(() => _i6.LoginPosterRepository());
  gh.factory<_i7.ImageSliderBloc>(
      () => _i7.ImageSliderBloc(get<_i3.IImageSliderRepo>()));
  gh.factory<_i8.LoginPosterBloc>(
      () => _i8.LoginPosterBloc(get<_i5.ILoginImagesRepo>()));
  return get;
}
