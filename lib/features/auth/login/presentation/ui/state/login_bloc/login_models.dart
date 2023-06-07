import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_models.freezed.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.loginWithEmailAndPassword({required String email, required String password}) =
      EmailAndPasswordLogin;
  const factory LoginEvent.cleanState() = CleanLogin;
}

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = InitialLogin;
  const factory LoginState.loading({required String email}) = LoadingLogin;
  const factory LoginState.error(String error) = ErrorLogin;
  const factory LoginState.successLogin({required String email}) = SuccessLogin;
}
