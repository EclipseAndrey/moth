// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i5;

import '../core/auth/auth_repository/auth_repository.dart' as _i3;
import '../core/infrastructures/infrastructure_module.dart' as _i11;
import '../core/lifecycle/lifecycle_state_provider.dart' as _i4;
import '../features/auth/login/presentation/ui/state/login_bloc/login_bloc.dart'
    as _i6;
import '../features/auth/register/presentation/state/registration_bloc/registration_bloc.dart'
    as _i7;
import '../features/discovery_test/data/discovery_service/discovery_service.dart'
    as _i9;
import '../features/discovery_test/presentation/state/discovery_bloc/discovery_bloc.dart'
    as _i10;
import '../features/splash/presentation/state/splash_screen_cubit/splash_screen_cubit.dart'
    as _i8;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final infrastructureModule = _$InfrastructureModule();
  gh.singleton<_i3.IAuthRepository>(
    _i3.AuthRepository(),
    dispose: _i3.disposeProvider,
  );
  gh.singleton<_i4.ILifecycleStateProvider>(
    _i4.LifecycleStateProvider(),
    dispose: _i4.disposeController,
  );
  gh.singleton<_i5.Logger>(infrastructureModule.logger());
  gh.factory<_i6.LoginBloc>(() => _i6.LoginBloc(gh<_i3.IAuthRepository>()));
  gh.factory<_i7.RegistrationBloc>(
      () => _i7.RegistrationBloc(gh<_i3.IAuthRepository>()));
  gh.factory<_i8.SplashCubit>(() => _i8.SplashCubit(gh<_i3.IAuthRepository>()));
  gh.singleton<_i9.IDiscoveryService>(_i9.DiscoveryService(gh<_i5.Logger>()));
  gh.factory<_i10.DiscoveryBloc>(() => _i10.DiscoveryBloc(
        gh<_i9.IDiscoveryService>(),
        gh<_i5.Logger>(),
      ));
  return getIt;
}

class _$InfrastructureModule extends _i11.InfrastructureModule {}
