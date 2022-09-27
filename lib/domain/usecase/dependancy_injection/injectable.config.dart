// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../data/bloc/login/login_poster/login_poster_bloc.dart' as _i5;
import '../../../data/repositories/login/login_poster_repo.dart' as _i4;
import '../../repositories/product/i_login_poster_repo.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.ILoginImagesRepo>(() => _i4.LoginPosterRepository());
  gh.factory<_i5.LoginPosterBloc>(
      () => _i5.LoginPosterBloc(get<_i3.ILoginImagesRepo>()));
  return get;
}
