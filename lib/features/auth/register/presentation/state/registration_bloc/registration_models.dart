import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_models.freezed.dart';

@freezed
class RegistrationEvent with _$RegistrationEvent {
  const factory RegistrationEvent.confirmEmail({required String email}) = ConfirmEmailRegistration;
  const factory RegistrationEvent.confirmCode({required String email, required String code}) = ConfirmCodeRegistration;
  const factory RegistrationEvent.setPassword({required String email, required String password}) =
      SetPasswordRegistration;
  const factory RegistrationEvent.reset() = ResetRegistration;
}

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState.initial() = InitialRegistration;
  const factory RegistrationState.awaitConfirmationCode({required String email}) = AwaitConfirmCodeRegistration;
  const factory RegistrationState.errorCode(String error, {required String email}) = ErrorCodeRegistration;
  const factory RegistrationState.error(String error) = ErrorRegistration;
  const factory RegistrationState.successCode({required String email}) = SuccessCodeRegistration;
  const factory RegistrationState.loadingFinish({required String email}) = LoadingFinishRegistration;
  const factory RegistrationState.successRegistration({required String email}) = SuccessRegistration;
}
