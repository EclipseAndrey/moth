import 'package:auto_route/auto_route.dart';
import 'package:get_it/get_it.dart';
import 'package:moth/app/router/router.dart';
import 'package:moth/core/auth/auth_repository/auth_repository.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final authRepository = GetIt.I.get<IAuthRepository>();
    if (authRepository.authStream.valueOrNull == MAuthState.authorized) {
      resolver.next(true);
    } else {
      router.replaceAll(
        [
          const LoginRoute(),
        ],
      );
      authRepository.authStream.firstWhere((event) => event == MAuthState.authorized).then((value) {
        router.replaceAll(
          [
            resolver.route.toPageRouteInfo(),
          ],
        );
      });
    }
  }
}
