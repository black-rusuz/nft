// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'data/repository_impl.dart' as _i6;
import 'domain/repository.dart' as _i5;
import 'injection.dart' as _i12;
import 'presentation/pages/events/bloc/events_bloc.dart' as _i8;
import 'presentation/pages/home/bloc/home_bloc.dart' as _i9;
import 'presentation/pages/login/bloc/login_bloc.dart' as _i10;
import 'presentation/pages/people/bloc/people_bloc.dart' as _i11;
import 'presentation/pages/profile/bloc/profile_bloc.dart' as _i4;
import 'presentation/pages/shop/bloc/shop_bloc.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.singleton<_i3.Dio>(registerModule.client);
  gh.factory<_i4.ProfileBloc>(() => _i4.ProfileBloc());
  gh.singleton<_i5.Repository>(_i6.RepositoryImpl(client: get<_i3.Dio>()));
  gh.factory<_i7.ShopBloc>(() => _i7.ShopBloc(get<_i5.Repository>()));
  gh.factory<_i8.EventsBloc>(() => _i8.EventsBloc(get<_i5.Repository>()));
  gh.factory<_i9.HomeBloc>(() => _i9.HomeBloc(get<_i5.Repository>()));
  gh.factory<_i10.LoginBloc>(() => _i10.LoginBloc(get<_i5.Repository>()));
  gh.factory<_i11.PeopleBloc>(() => _i11.PeopleBloc(get<_i5.Repository>()));
  return get;
}

class _$RegisterModule extends _i12.RegisterModule {}
