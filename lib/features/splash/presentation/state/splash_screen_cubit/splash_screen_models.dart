import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_screen_models.freezed.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState.initial() = InitialSplashState;
  const factory SplashState.unauthorized() = UnauthorizedSplashState;
  const factory SplashState.authorized() = AuthorizedSplashState;
}
