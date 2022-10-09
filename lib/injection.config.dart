// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'data/repository_impl.dart' as _i10;
import 'domain/repository.dart' as _i9;
import 'injection.dart' as _i12;
import 'presentation/pages/events/bloc/events_bloc.dart' as _i4;
import 'presentation/pages/home/bloc/home_bloc.dart' as _i5;
import 'presentation/pages/login/bloc/login_bloc.dart' as _i6;
import 'presentation/pages/people/bloc/people_bloc.dart' as _i7;
import 'presentation/pages/profile/bloc/profile_bloc.dart' as _i8;
import 'presentation/pages/shop/bloc/shop_bloc.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i4.EventsBloc>(() => _i4.EventsBloc());
  gh.factory<_i5.HomeBloc>(() => _i5.HomeBloc());
  gh.factory<_i6.LoginBloc>(() => _i6.LoginBloc());
  gh.factory<_i7.PeopleBloc>(() => _i7.PeopleBloc());
  gh.factory<_i8.ProfileBloc>(() => _i8.ProfileBloc());
  gh.singleton<_i9.Repository>(_i10.RepositoryImpl(client: get<_i3.Dio>()));
  gh.factory<_i11.ShopBloc>(() => _i11.ShopBloc());
  return get;
}

class _$RegisterModule extends _i12.RegisterModule {}
