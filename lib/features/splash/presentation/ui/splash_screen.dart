import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:moth/app/router/router.dart';
import 'package:moth/features/splash/presentation/state/splash_screen_cubit/splash_screen_cubit.dart';
import 'package:moth/features/splash/presentation/state/splash_screen_cubit/splash_screen_models.dart';
import 'package:moth/shared/widgets/m_states/m_state_widget.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SplashCubit>(
      create: (_) => GetIt.I.get(),
      child: Builder(builder: (context) {
        return BlocListener<SplashCubit, SplashState>(
          listener: (_, state) {
            state.whenOrNull(unauthorized: () {
              context.router.replaceAll(
                [
                  const HomeRoute(),
                ],
              );
            }, authorized: () {
              context.router.replaceAll(
                [
                  const HomeRoute(),
                ],
              );
            });
          },
          child: const Scaffold(
            body: Center(
              child: SizedBox(
                height: 200,
                width: 200,
                child: MState.loading(),
              ),
            ),
          ),
        );
      }),
    );
  }
}
