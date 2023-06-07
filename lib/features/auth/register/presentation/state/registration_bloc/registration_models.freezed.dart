// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegistrationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) confirmEmail,
    required TResult Function(String email, String code) confirmCode,
    required TResult Function(String email, String password) setPassword,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? confirmEmail,
    TResult? Function(String email, String code)? confirmCode,
    TResult? Function(String email, String password)? setPassword,
    TResult? Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? confirmEmail,
    TResult Function(String email, String code)? confirmCode,
    TResult Function(String email, String password)? setPassword,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConfirmEmailRegistration value) confirmEmail,
    required TResult Function(ConfirmCodeRegistration value) confirmCode,
    required TResult Function(SetPasswordRegistration value) setPassword,
    required TResult Function(ResetRegistration value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConfirmEmailRegistration value)? confirmEmail,
    TResult? Function(ConfirmCodeRegistration value)? confirmCode,
    TResult? Function(SetPasswordRegistration value)? setPassword,
    TResult? Function(ResetRegistration value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmEmailRegistration value)? confirmEmail,
    TResult Function(ConfirmCodeRegistration value)? confirmCode,
    TResult Function(SetPasswordRegistration value)? setPassword,
    TResult Function(ResetRegistration value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationEventCopyWith<$Res> {
  factory $RegistrationEventCopyWith(
          RegistrationEvent value, $Res Function(RegistrationEvent) then) =
      _$RegistrationEventCopyWithImpl<$Res, RegistrationEvent>;
}

/// @nodoc
class _$RegistrationEventCopyWithImpl<$Res, $Val extends RegistrationEvent>
    implements $RegistrationEventCopyWith<$Res> {
  _$RegistrationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ConfirmEmailRegistrationCopyWith<$Res> {
  factory _$$ConfirmEmailRegistrationCopyWith(_$ConfirmEmailRegistration value,
          $Res Function(_$ConfirmEmailRegistration) then) =
      __$$ConfirmEmailRegistrationCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$ConfirmEmailRegistrationCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$ConfirmEmailRegistration>
    implements _$$ConfirmEmailRegistrationCopyWith<$Res> {
  __$$ConfirmEmailRegistrationCopyWithImpl(_$ConfirmEmailRegistration _value,
      $Res Function(_$ConfirmEmailRegistration) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$ConfirmEmailRegistration(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConfirmEmailRegistration implements ConfirmEmailRegistration {
  const _$ConfirmEmailRegistration({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'RegistrationEvent.confirmEmail(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmEmailRegistration &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmEmailRegistrationCopyWith<_$ConfirmEmailRegistration>
      get copyWith =>
          __$$ConfirmEmailRegistrationCopyWithImpl<_$ConfirmEmailRegistration>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) confirmEmail,
    required TResult Function(String email, String code) confirmCode,
    required TResult Function(String email, String password) setPassword,
    required TResult Function() reset,
  }) {
    return confirmEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? confirmEmail,
    TResult? Function(String email, String code)? confirmCode,
    TResult? Function(String email, String password)? setPassword,
    TResult? Function()? reset,
  }) {
    return confirmEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? confirmEmail,
    TResult Function(String email, String code)? confirmCode,
    TResult Function(String email, String password)? setPassword,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (confirmEmail != null) {
      return confirmEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConfirmEmailRegistration value) confirmEmail,
    required TResult Function(ConfirmCodeRegistration value) confirmCode,
    required TResult Function(SetPasswordRegistration value) setPassword,
    required TResult Function(ResetRegistration value) reset,
  }) {
    return confirmEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConfirmEmailRegistration value)? confirmEmail,
    TResult? Function(ConfirmCodeRegistration value)? confirmCode,
    TResult? Function(SetPasswordRegistration value)? setPassword,
    TResult? Function(ResetRegistration value)? reset,
  }) {
    return confirmEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmEmailRegistration value)? confirmEmail,
    TResult Function(ConfirmCodeRegistration value)? confirmCode,
    TResult Function(SetPasswordRegistration value)? setPassword,
    TResult Function(ResetRegistration value)? reset,
    required TResult orElse(),
  }) {
    if (confirmEmail != null) {
      return confirmEmail(this);
    }
    return orElse();
  }
}

abstract class ConfirmEmailRegistration implements RegistrationEvent {
  const factory ConfirmEmailRegistration({required final String email}) =
      _$ConfirmEmailRegistration;

  String get email;
  @JsonKey(ignore: true)
  _$$ConfirmEmailRegistrationCopyWith<_$ConfirmEmailRegistration>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmCodeRegistrationCopyWith<$Res> {
  factory _$$ConfirmCodeRegistrationCopyWith(_$ConfirmCodeRegistration value,
          $Res Function(_$ConfirmCodeRegistration) then) =
      __$$ConfirmCodeRegistrationCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String code});
}

/// @nodoc
class __$$ConfirmCodeRegistrationCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$ConfirmCodeRegistration>
    implements _$$ConfirmCodeRegistrationCopyWith<$Res> {
  __$$ConfirmCodeRegistrationCopyWithImpl(_$ConfirmCodeRegistration _value,
      $Res Function(_$ConfirmCodeRegistration) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? code = null,
  }) {
    return _then(_$ConfirmCodeRegistration(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConfirmCodeRegistration implements ConfirmCodeRegistration {
  const _$ConfirmCodeRegistration({required this.email, required this.code});

  @override
  final String email;
  @override
  final String code;

  @override
  String toString() {
    return 'RegistrationEvent.confirmCode(email: $email, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmCodeRegistration &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmCodeRegistrationCopyWith<_$ConfirmCodeRegistration> get copyWith =>
      __$$ConfirmCodeRegistrationCopyWithImpl<_$ConfirmCodeRegistration>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) confirmEmail,
    required TResult Function(String email, String code) confirmCode,
    required TResult Function(String email, String password) setPassword,
    required TResult Function() reset,
  }) {
    return confirmCode(email, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? confirmEmail,
    TResult? Function(String email, String code)? confirmCode,
    TResult? Function(String email, String password)? setPassword,
    TResult? Function()? reset,
  }) {
    return confirmCode?.call(email, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? confirmEmail,
    TResult Function(String email, String code)? confirmCode,
    TResult Function(String email, String password)? setPassword,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (confirmCode != null) {
      return confirmCode(email, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConfirmEmailRegistration value) confirmEmail,
    required TResult Function(ConfirmCodeRegistration value) confirmCode,
    required TResult Function(SetPasswordRegistration value) setPassword,
    required TResult Function(ResetRegistration value) reset,
  }) {
    return confirmCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConfirmEmailRegistration value)? confirmEmail,
    TResult? Function(ConfirmCodeRegistration value)? confirmCode,
    TResult? Function(SetPasswordRegistration value)? setPassword,
    TResult? Function(ResetRegistration value)? reset,
  }) {
    return confirmCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmEmailRegistration value)? confirmEmail,
    TResult Function(ConfirmCodeRegistration value)? confirmCode,
    TResult Function(SetPasswordRegistration value)? setPassword,
    TResult Function(ResetRegistration value)? reset,
    required TResult orElse(),
  }) {
    if (confirmCode != null) {
      return confirmCode(this);
    }
    return orElse();
  }
}

abstract class ConfirmCodeRegistration implements RegistrationEvent {
  const factory ConfirmCodeRegistration(
      {required final String email,
      required final String code}) = _$ConfirmCodeRegistration;

  String get email;
  String get code;
  @JsonKey(ignore: true)
  _$$ConfirmCodeRegistrationCopyWith<_$ConfirmCodeRegistration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetPasswordRegistrationCopyWith<$Res> {
  factory _$$SetPasswordRegistrationCopyWith(_$SetPasswordRegistration value,
          $Res Function(_$SetPasswordRegistration) then) =
      __$$SetPasswordRegistrationCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SetPasswordRegistrationCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$SetPasswordRegistration>
    implements _$$SetPasswordRegistrationCopyWith<$Res> {
  __$$SetPasswordRegistrationCopyWithImpl(_$SetPasswordRegistration _value,
      $Res Function(_$SetPasswordRegistration) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SetPasswordRegistration(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetPasswordRegistration implements SetPasswordRegistration {
  const _$SetPasswordRegistration(
      {required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'RegistrationEvent.setPassword(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetPasswordRegistration &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetPasswordRegistrationCopyWith<_$SetPasswordRegistration> get copyWith =>
      __$$SetPasswordRegistrationCopyWithImpl<_$SetPasswordRegistration>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) confirmEmail,
    required TResult Function(String email, String code) confirmCode,
    required TResult Function(String email, String password) setPassword,
    required TResult Function() reset,
  }) {
    return setPassword(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? confirmEmail,
    TResult? Function(String email, String code)? confirmCode,
    TResult? Function(String email, String password)? setPassword,
    TResult? Function()? reset,
  }) {
    return setPassword?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? confirmEmail,
    TResult Function(String email, String code)? confirmCode,
    TResult Function(String email, String password)? setPassword,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (setPassword != null) {
      return setPassword(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConfirmEmailRegistration value) confirmEmail,
    required TResult Function(ConfirmCodeRegistration value) confirmCode,
    required TResult Function(SetPasswordRegistration value) setPassword,
    required TResult Function(ResetRegistration value) reset,
  }) {
    return setPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConfirmEmailRegistration value)? confirmEmail,
    TResult? Function(ConfirmCodeRegistration value)? confirmCode,
    TResult? Function(SetPasswordRegistration value)? setPassword,
    TResult? Function(ResetRegistration value)? reset,
  }) {
    return setPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmEmailRegistration value)? confirmEmail,
    TResult Function(ConfirmCodeRegistration value)? confirmCode,
    TResult Function(SetPasswordRegistration value)? setPassword,
    TResult Function(ResetRegistration value)? reset,
    required TResult orElse(),
  }) {
    if (setPassword != null) {
      return setPassword(this);
    }
    return orElse();
  }
}

abstract class SetPasswordRegistration implements RegistrationEvent {
  const factory SetPasswordRegistration(
      {required final String email,
      required final String password}) = _$SetPasswordRegistration;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$SetPasswordRegistrationCopyWith<_$SetPasswordRegistration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetRegistrationCopyWith<$Res> {
  factory _$$ResetRegistrationCopyWith(
          _$ResetRegistration value, $Res Function(_$ResetRegistration) then) =
      __$$ResetRegistrationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetRegistrationCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$ResetRegistration>
    implements _$$ResetRegistrationCopyWith<$Res> {
  __$$ResetRegistrationCopyWithImpl(
      _$ResetRegistration _value, $Res Function(_$ResetRegistration) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetRegistration implements ResetRegistration {
  const _$ResetRegistration();

  @override
  String toString() {
    return 'RegistrationEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetRegistration);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) confirmEmail,
    required TResult Function(String email, String code) confirmCode,
    required TResult Function(String email, String password) setPassword,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? confirmEmail,
    TResult? Function(String email, String code)? confirmCode,
    TResult? Function(String email, String password)? setPassword,
    TResult? Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? confirmEmail,
    TResult Function(String email, String code)? confirmCode,
    TResult Function(String email, String password)? setPassword,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConfirmEmailRegistration value) confirmEmail,
    required TResult Function(ConfirmCodeRegistration value) confirmCode,
    required TResult Function(SetPasswordRegistration value) setPassword,
    required TResult Function(ResetRegistration value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConfirmEmailRegistration value)? confirmEmail,
    TResult? Function(ConfirmCodeRegistration value)? confirmCode,
    TResult? Function(SetPasswordRegistration value)? setPassword,
    TResult? Function(ResetRegistration value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmEmailRegistration value)? confirmEmail,
    TResult Function(ConfirmCodeRegistration value)? confirmCode,
    TResult Function(SetPasswordRegistration value)? setPassword,
    TResult Function(ResetRegistration value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class ResetRegistration implements RegistrationEvent {
  const factory ResetRegistration() = _$ResetRegistration;
}

/// @nodoc
mixin _$RegistrationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String email) awaitConfirmationCode,
    required TResult Function(String error, String email) errorCode,
    required TResult Function(String error) error,
    required TResult Function(String email) successCode,
    required TResult Function(String email) loadingFinish,
    required TResult Function(String email) successRegistration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String email)? awaitConfirmationCode,
    TResult? Function(String error, String email)? errorCode,
    TResult? Function(String error)? error,
    TResult? Function(String email)? successCode,
    TResult? Function(String email)? loadingFinish,
    TResult? Function(String email)? successRegistration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String email)? awaitConfirmationCode,
    TResult Function(String error, String email)? errorCode,
    TResult Function(String error)? error,
    TResult Function(String email)? successCode,
    TResult Function(String email)? loadingFinish,
    TResult Function(String email)? successRegistration,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialRegistration value) initial,
    required TResult Function(AwaitConfirmCodeRegistration value)
        awaitConfirmationCode,
    required TResult Function(ErrorCodeRegistration value) errorCode,
    required TResult Function(ErrorRegistration value) error,
    required TResult Function(SuccessCodeRegistration value) successCode,
    required TResult Function(LoadingFinishRegistration value) loadingFinish,
    required TResult Function(SuccessRegistration value) successRegistration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialRegistration value)? initial,
    TResult? Function(AwaitConfirmCodeRegistration value)?
        awaitConfirmationCode,
    TResult? Function(ErrorCodeRegistration value)? errorCode,
    TResult? Function(ErrorRegistration value)? error,
    TResult? Function(SuccessCodeRegistration value)? successCode,
    TResult? Function(LoadingFinishRegistration value)? loadingFinish,
    TResult? Function(SuccessRegistration value)? successRegistration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialRegistration value)? initial,
    TResult Function(AwaitConfirmCodeRegistration value)? awaitConfirmationCode,
    TResult Function(ErrorCodeRegistration value)? errorCode,
    TResult Function(ErrorRegistration value)? error,
    TResult Function(SuccessCodeRegistration value)? successCode,
    TResult Function(LoadingFinishRegistration value)? loadingFinish,
    TResult Function(SuccessRegistration value)? successRegistration,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationStateCopyWith<$Res> {
  factory $RegistrationStateCopyWith(
          RegistrationState value, $Res Function(RegistrationState) then) =
      _$RegistrationStateCopyWithImpl<$Res, RegistrationState>;
}

/// @nodoc
class _$RegistrationStateCopyWithImpl<$Res, $Val extends RegistrationState>
    implements $RegistrationStateCopyWith<$Res> {
  _$RegistrationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialRegistrationCopyWith<$Res> {
  factory _$$InitialRegistrationCopyWith(_$InitialRegistration value,
          $Res Function(_$InitialRegistration) then) =
      __$$InitialRegistrationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialRegistrationCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$InitialRegistration>
    implements _$$InitialRegistrationCopyWith<$Res> {
  __$$InitialRegistrationCopyWithImpl(
      _$InitialRegistration _value, $Res Function(_$InitialRegistration) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialRegistration implements InitialRegistration {
  const _$InitialRegistration();

  @override
  String toString() {
    return 'RegistrationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialRegistration);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String email) awaitConfirmationCode,
    required TResult Function(String error, String email) errorCode,
    required TResult Function(String error) error,
    required TResult Function(String email) successCode,
    required TResult Function(String email) loadingFinish,
    required TResult Function(String email) successRegistration,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String email)? awaitConfirmationCode,
    TResult? Function(String error, String email)? errorCode,
    TResult? Function(String error)? error,
    TResult? Function(String email)? successCode,
    TResult? Function(String email)? loadingFinish,
    TResult? Function(String email)? successRegistration,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String email)? awaitConfirmationCode,
    TResult Function(String error, String email)? errorCode,
    TResult Function(String error)? error,
    TResult Function(String email)? successCode,
    TResult Function(String email)? loadingFinish,
    TResult Function(String email)? successRegistration,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialRegistration value) initial,
    required TResult Function(AwaitConfirmCodeRegistration value)
        awaitConfirmationCode,
    required TResult Function(ErrorCodeRegistration value) errorCode,
    required TResult Function(ErrorRegistration value) error,
    required TResult Function(SuccessCodeRegistration value) successCode,
    required TResult Function(LoadingFinishRegistration value) loadingFinish,
    required TResult Function(SuccessRegistration value) successRegistration,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialRegistration value)? initial,
    TResult? Function(AwaitConfirmCodeRegistration value)?
        awaitConfirmationCode,
    TResult? Function(ErrorCodeRegistration value)? errorCode,
    TResult? Function(ErrorRegistration value)? error,
    TResult? Function(SuccessCodeRegistration value)? successCode,
    TResult? Function(LoadingFinishRegistration value)? loadingFinish,
    TResult? Function(SuccessRegistration value)? successRegistration,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialRegistration value)? initial,
    TResult Function(AwaitConfirmCodeRegistration value)? awaitConfirmationCode,
    TResult Function(ErrorCodeRegistration value)? errorCode,
    TResult Function(ErrorRegistration value)? error,
    TResult Function(SuccessCodeRegistration value)? successCode,
    TResult Function(LoadingFinishRegistration value)? loadingFinish,
    TResult Function(SuccessRegistration value)? successRegistration,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialRegistration implements RegistrationState {
  const factory InitialRegistration() = _$InitialRegistration;
}

/// @nodoc
abstract class _$$AwaitConfirmCodeRegistrationCopyWith<$Res> {
  factory _$$AwaitConfirmCodeRegistrationCopyWith(
          _$AwaitConfirmCodeRegistration value,
          $Res Function(_$AwaitConfirmCodeRegistration) then) =
      __$$AwaitConfirmCodeRegistrationCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$AwaitConfirmCodeRegistrationCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res,
        _$AwaitConfirmCodeRegistration>
    implements _$$AwaitConfirmCodeRegistrationCopyWith<$Res> {
  __$$AwaitConfirmCodeRegistrationCopyWithImpl(
      _$AwaitConfirmCodeRegistration _value,
      $Res Function(_$AwaitConfirmCodeRegistration) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$AwaitConfirmCodeRegistration(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AwaitConfirmCodeRegistration implements AwaitConfirmCodeRegistration {
  const _$AwaitConfirmCodeRegistration({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'RegistrationState.awaitConfirmationCode(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AwaitConfirmCodeRegistration &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AwaitConfirmCodeRegistrationCopyWith<_$AwaitConfirmCodeRegistration>
      get copyWith => __$$AwaitConfirmCodeRegistrationCopyWithImpl<
          _$AwaitConfirmCodeRegistration>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String email) awaitConfirmationCode,
    required TResult Function(String error, String email) errorCode,
    required TResult Function(String error) error,
    required TResult Function(String email) successCode,
    required TResult Function(String email) loadingFinish,
    required TResult Function(String email) successRegistration,
  }) {
    return awaitConfirmationCode(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String email)? awaitConfirmationCode,
    TResult? Function(String error, String email)? errorCode,
    TResult? Function(String error)? error,
    TResult? Function(String email)? successCode,
    TResult? Function(String email)? loadingFinish,
    TResult? Function(String email)? successRegistration,
  }) {
    return awaitConfirmationCode?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String email)? awaitConfirmationCode,
    TResult Function(String error, String email)? errorCode,
    TResult Function(String error)? error,
    TResult Function(String email)? successCode,
    TResult Function(String email)? loadingFinish,
    TResult Function(String email)? successRegistration,
    required TResult orElse(),
  }) {
    if (awaitConfirmationCode != null) {
      return awaitConfirmationCode(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialRegistration value) initial,
    required TResult Function(AwaitConfirmCodeRegistration value)
        awaitConfirmationCode,
    required TResult Function(ErrorCodeRegistration value) errorCode,
    required TResult Function(ErrorRegistration value) error,
    required TResult Function(SuccessCodeRegistration value) successCode,
    required TResult Function(LoadingFinishRegistration value) loadingFinish,
    required TResult Function(SuccessRegistration value) successRegistration,
  }) {
    return awaitConfirmationCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialRegistration value)? initial,
    TResult? Function(AwaitConfirmCodeRegistration value)?
        awaitConfirmationCode,
    TResult? Function(ErrorCodeRegistration value)? errorCode,
    TResult? Function(ErrorRegistration value)? error,
    TResult? Function(SuccessCodeRegistration value)? successCode,
    TResult? Function(LoadingFinishRegistration value)? loadingFinish,
    TResult? Function(SuccessRegistration value)? successRegistration,
  }) {
    return awaitConfirmationCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialRegistration value)? initial,
    TResult Function(AwaitConfirmCodeRegistration value)? awaitConfirmationCode,
    TResult Function(ErrorCodeRegistration value)? errorCode,
    TResult Function(ErrorRegistration value)? error,
    TResult Function(SuccessCodeRegistration value)? successCode,
    TResult Function(LoadingFinishRegistration value)? loadingFinish,
    TResult Function(SuccessRegistration value)? successRegistration,
    required TResult orElse(),
  }) {
    if (awaitConfirmationCode != null) {
      return awaitConfirmationCode(this);
    }
    return orElse();
  }
}

abstract class AwaitConfirmCodeRegistration implements RegistrationState {
  const factory AwaitConfirmCodeRegistration({required final String email}) =
      _$AwaitConfirmCodeRegistration;

  String get email;
  @JsonKey(ignore: true)
  _$$AwaitConfirmCodeRegistrationCopyWith<_$AwaitConfirmCodeRegistration>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCodeRegistrationCopyWith<$Res> {
  factory _$$ErrorCodeRegistrationCopyWith(_$ErrorCodeRegistration value,
          $Res Function(_$ErrorCodeRegistration) then) =
      __$$ErrorCodeRegistrationCopyWithImpl<$Res>;
  @useResult
  $Res call({String error, String email});
}

/// @nodoc
class __$$ErrorCodeRegistrationCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$ErrorCodeRegistration>
    implements _$$ErrorCodeRegistrationCopyWith<$Res> {
  __$$ErrorCodeRegistrationCopyWithImpl(_$ErrorCodeRegistration _value,
      $Res Function(_$ErrorCodeRegistration) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? email = null,
  }) {
    return _then(_$ErrorCodeRegistration(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorCodeRegistration implements ErrorCodeRegistration {
  const _$ErrorCodeRegistration(this.error, {required this.email});

  @override
  final String error;
  @override
  final String email;

  @override
  String toString() {
    return 'RegistrationState.errorCode(error: $error, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorCodeRegistration &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorCodeRegistrationCopyWith<_$ErrorCodeRegistration> get copyWith =>
      __$$ErrorCodeRegistrationCopyWithImpl<_$ErrorCodeRegistration>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String email) awaitConfirmationCode,
    required TResult Function(String error, String email) errorCode,
    required TResult Function(String error) error,
    required TResult Function(String email) successCode,
    required TResult Function(String email) loadingFinish,
    required TResult Function(String email) successRegistration,
  }) {
    return errorCode(this.error, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String email)? awaitConfirmationCode,
    TResult? Function(String error, String email)? errorCode,
    TResult? Function(String error)? error,
    TResult? Function(String email)? successCode,
    TResult? Function(String email)? loadingFinish,
    TResult? Function(String email)? successRegistration,
  }) {
    return errorCode?.call(this.error, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String email)? awaitConfirmationCode,
    TResult Function(String error, String email)? errorCode,
    TResult Function(String error)? error,
    TResult Function(String email)? successCode,
    TResult Function(String email)? loadingFinish,
    TResult Function(String email)? successRegistration,
    required TResult orElse(),
  }) {
    if (errorCode != null) {
      return errorCode(this.error, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialRegistration value) initial,
    required TResult Function(AwaitConfirmCodeRegistration value)
        awaitConfirmationCode,
    required TResult Function(ErrorCodeRegistration value) errorCode,
    required TResult Function(ErrorRegistration value) error,
    required TResult Function(SuccessCodeRegistration value) successCode,
    required TResult Function(LoadingFinishRegistration value) loadingFinish,
    required TResult Function(SuccessRegistration value) successRegistration,
  }) {
    return errorCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialRegistration value)? initial,
    TResult? Function(AwaitConfirmCodeRegistration value)?
        awaitConfirmationCode,
    TResult? Function(ErrorCodeRegistration value)? errorCode,
    TResult? Function(ErrorRegistration value)? error,
    TResult? Function(SuccessCodeRegistration value)? successCode,
    TResult? Function(LoadingFinishRegistration value)? loadingFinish,
    TResult? Function(SuccessRegistration value)? successRegistration,
  }) {
    return errorCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialRegistration value)? initial,
    TResult Function(AwaitConfirmCodeRegistration value)? awaitConfirmationCode,
    TResult Function(ErrorCodeRegistration value)? errorCode,
    TResult Function(ErrorRegistration value)? error,
    TResult Function(SuccessCodeRegistration value)? successCode,
    TResult Function(LoadingFinishRegistration value)? loadingFinish,
    TResult Function(SuccessRegistration value)? successRegistration,
    required TResult orElse(),
  }) {
    if (errorCode != null) {
      return errorCode(this);
    }
    return orElse();
  }
}

abstract class ErrorCodeRegistration implements RegistrationState {
  const factory ErrorCodeRegistration(final String error,
      {required final String email}) = _$ErrorCodeRegistration;

  String get error;
  String get email;
  @JsonKey(ignore: true)
  _$$ErrorCodeRegistrationCopyWith<_$ErrorCodeRegistration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorRegistrationCopyWith<$Res> {
  factory _$$ErrorRegistrationCopyWith(
          _$ErrorRegistration value, $Res Function(_$ErrorRegistration) then) =
      __$$ErrorRegistrationCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorRegistrationCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$ErrorRegistration>
    implements _$$ErrorRegistrationCopyWith<$Res> {
  __$$ErrorRegistrationCopyWithImpl(
      _$ErrorRegistration _value, $Res Function(_$ErrorRegistration) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorRegistration(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorRegistration implements ErrorRegistration {
  const _$ErrorRegistration(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'RegistrationState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorRegistration &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorRegistrationCopyWith<_$ErrorRegistration> get copyWith =>
      __$$ErrorRegistrationCopyWithImpl<_$ErrorRegistration>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String email) awaitConfirmationCode,
    required TResult Function(String error, String email) errorCode,
    required TResult Function(String error) error,
    required TResult Function(String email) successCode,
    required TResult Function(String email) loadingFinish,
    required TResult Function(String email) successRegistration,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String email)? awaitConfirmationCode,
    TResult? Function(String error, String email)? errorCode,
    TResult? Function(String error)? error,
    TResult? Function(String email)? successCode,
    TResult? Function(String email)? loadingFinish,
    TResult? Function(String email)? successRegistration,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String email)? awaitConfirmationCode,
    TResult Function(String error, String email)? errorCode,
    TResult Function(String error)? error,
    TResult Function(String email)? successCode,
    TResult Function(String email)? loadingFinish,
    TResult Function(String email)? successRegistration,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialRegistration value) initial,
    required TResult Function(AwaitConfirmCodeRegistration value)
        awaitConfirmationCode,
    required TResult Function(ErrorCodeRegistration value) errorCode,
    required TResult Function(ErrorRegistration value) error,
    required TResult Function(SuccessCodeRegistration value) successCode,
    required TResult Function(LoadingFinishRegistration value) loadingFinish,
    required TResult Function(SuccessRegistration value) successRegistration,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialRegistration value)? initial,
    TResult? Function(AwaitConfirmCodeRegistration value)?
        awaitConfirmationCode,
    TResult? Function(ErrorCodeRegistration value)? errorCode,
    TResult? Function(ErrorRegistration value)? error,
    TResult? Function(SuccessCodeRegistration value)? successCode,
    TResult? Function(LoadingFinishRegistration value)? loadingFinish,
    TResult? Function(SuccessRegistration value)? successRegistration,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialRegistration value)? initial,
    TResult Function(AwaitConfirmCodeRegistration value)? awaitConfirmationCode,
    TResult Function(ErrorCodeRegistration value)? errorCode,
    TResult Function(ErrorRegistration value)? error,
    TResult Function(SuccessCodeRegistration value)? successCode,
    TResult Function(LoadingFinishRegistration value)? loadingFinish,
    TResult Function(SuccessRegistration value)? successRegistration,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorRegistration implements RegistrationState {
  const factory ErrorRegistration(final String error) = _$ErrorRegistration;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorRegistrationCopyWith<_$ErrorRegistration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessCodeRegistrationCopyWith<$Res> {
  factory _$$SuccessCodeRegistrationCopyWith(_$SuccessCodeRegistration value,
          $Res Function(_$SuccessCodeRegistration) then) =
      __$$SuccessCodeRegistrationCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$SuccessCodeRegistrationCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$SuccessCodeRegistration>
    implements _$$SuccessCodeRegistrationCopyWith<$Res> {
  __$$SuccessCodeRegistrationCopyWithImpl(_$SuccessCodeRegistration _value,
      $Res Function(_$SuccessCodeRegistration) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$SuccessCodeRegistration(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuccessCodeRegistration implements SuccessCodeRegistration {
  const _$SuccessCodeRegistration({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'RegistrationState.successCode(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessCodeRegistration &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessCodeRegistrationCopyWith<_$SuccessCodeRegistration> get copyWith =>
      __$$SuccessCodeRegistrationCopyWithImpl<_$SuccessCodeRegistration>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String email) awaitConfirmationCode,
    required TResult Function(String error, String email) errorCode,
    required TResult Function(String error) error,
    required TResult Function(String email) successCode,
    required TResult Function(String email) loadingFinish,
    required TResult Function(String email) successRegistration,
  }) {
    return successCode(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String email)? awaitConfirmationCode,
    TResult? Function(String error, String email)? errorCode,
    TResult? Function(String error)? error,
    TResult? Function(String email)? successCode,
    TResult? Function(String email)? loadingFinish,
    TResult? Function(String email)? successRegistration,
  }) {
    return successCode?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String email)? awaitConfirmationCode,
    TResult Function(String error, String email)? errorCode,
    TResult Function(String error)? error,
    TResult Function(String email)? successCode,
    TResult Function(String email)? loadingFinish,
    TResult Function(String email)? successRegistration,
    required TResult orElse(),
  }) {
    if (successCode != null) {
      return successCode(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialRegistration value) initial,
    required TResult Function(AwaitConfirmCodeRegistration value)
        awaitConfirmationCode,
    required TResult Function(ErrorCodeRegistration value) errorCode,
    required TResult Function(ErrorRegistration value) error,
    required TResult Function(SuccessCodeRegistration value) successCode,
    required TResult Function(LoadingFinishRegistration value) loadingFinish,
    required TResult Function(SuccessRegistration value) successRegistration,
  }) {
    return successCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialRegistration value)? initial,
    TResult? Function(AwaitConfirmCodeRegistration value)?
        awaitConfirmationCode,
    TResult? Function(ErrorCodeRegistration value)? errorCode,
    TResult? Function(ErrorRegistration value)? error,
    TResult? Function(SuccessCodeRegistration value)? successCode,
    TResult? Function(LoadingFinishRegistration value)? loadingFinish,
    TResult? Function(SuccessRegistration value)? successRegistration,
  }) {
    return successCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialRegistration value)? initial,
    TResult Function(AwaitConfirmCodeRegistration value)? awaitConfirmationCode,
    TResult Function(ErrorCodeRegistration value)? errorCode,
    TResult Function(ErrorRegistration value)? error,
    TResult Function(SuccessCodeRegistration value)? successCode,
    TResult Function(LoadingFinishRegistration value)? loadingFinish,
    TResult Function(SuccessRegistration value)? successRegistration,
    required TResult orElse(),
  }) {
    if (successCode != null) {
      return successCode(this);
    }
    return orElse();
  }
}

abstract class SuccessCodeRegistration implements RegistrationState {
  const factory SuccessCodeRegistration({required final String email}) =
      _$SuccessCodeRegistration;

  String get email;
  @JsonKey(ignore: true)
  _$$SuccessCodeRegistrationCopyWith<_$SuccessCodeRegistration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingFinishRegistrationCopyWith<$Res> {
  factory _$$LoadingFinishRegistrationCopyWith(
          _$LoadingFinishRegistration value,
          $Res Function(_$LoadingFinishRegistration) then) =
      __$$LoadingFinishRegistrationCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$LoadingFinishRegistrationCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$LoadingFinishRegistration>
    implements _$$LoadingFinishRegistrationCopyWith<$Res> {
  __$$LoadingFinishRegistrationCopyWithImpl(_$LoadingFinishRegistration _value,
      $Res Function(_$LoadingFinishRegistration) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$LoadingFinishRegistration(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadingFinishRegistration implements LoadingFinishRegistration {
  const _$LoadingFinishRegistration({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'RegistrationState.loadingFinish(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingFinishRegistration &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingFinishRegistrationCopyWith<_$LoadingFinishRegistration>
      get copyWith => __$$LoadingFinishRegistrationCopyWithImpl<
          _$LoadingFinishRegistration>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String email) awaitConfirmationCode,
    required TResult Function(String error, String email) errorCode,
    required TResult Function(String error) error,
    required TResult Function(String email) successCode,
    required TResult Function(String email) loadingFinish,
    required TResult Function(String email) successRegistration,
  }) {
    return loadingFinish(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String email)? awaitConfirmationCode,
    TResult? Function(String error, String email)? errorCode,
    TResult? Function(String error)? error,
    TResult? Function(String email)? successCode,
    TResult? Function(String email)? loadingFinish,
    TResult? Function(String email)? successRegistration,
  }) {
    return loadingFinish?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String email)? awaitConfirmationCode,
    TResult Function(String error, String email)? errorCode,
    TResult Function(String error)? error,
    TResult Function(String email)? successCode,
    TResult Function(String email)? loadingFinish,
    TResult Function(String email)? successRegistration,
    required TResult orElse(),
  }) {
    if (loadingFinish != null) {
      return loadingFinish(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialRegistration value) initial,
    required TResult Function(AwaitConfirmCodeRegistration value)
        awaitConfirmationCode,
    required TResult Function(ErrorCodeRegistration value) errorCode,
    required TResult Function(ErrorRegistration value) error,
    required TResult Function(SuccessCodeRegistration value) successCode,
    required TResult Function(LoadingFinishRegistration value) loadingFinish,
    required TResult Function(SuccessRegistration value) successRegistration,
  }) {
    return loadingFinish(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialRegistration value)? initial,
    TResult? Function(AwaitConfirmCodeRegistration value)?
        awaitConfirmationCode,
    TResult? Function(ErrorCodeRegistration value)? errorCode,
    TResult? Function(ErrorRegistration value)? error,
    TResult? Function(SuccessCodeRegistration value)? successCode,
    TResult? Function(LoadingFinishRegistration value)? loadingFinish,
    TResult? Function(SuccessRegistration value)? successRegistration,
  }) {
    return loadingFinish?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialRegistration value)? initial,
    TResult Function(AwaitConfirmCodeRegistration value)? awaitConfirmationCode,
    TResult Function(ErrorCodeRegistration value)? errorCode,
    TResult Function(ErrorRegistration value)? error,
    TResult Function(SuccessCodeRegistration value)? successCode,
    TResult Function(LoadingFinishRegistration value)? loadingFinish,
    TResult Function(SuccessRegistration value)? successRegistration,
    required TResult orElse(),
  }) {
    if (loadingFinish != null) {
      return loadingFinish(this);
    }
    return orElse();
  }
}

abstract class LoadingFinishRegistration implements RegistrationState {
  const factory LoadingFinishRegistration({required final String email}) =
      _$LoadingFinishRegistration;

  String get email;
  @JsonKey(ignore: true)
  _$$LoadingFinishRegistrationCopyWith<_$LoadingFinishRegistration>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessRegistrationCopyWith<$Res> {
  factory _$$SuccessRegistrationCopyWith(_$SuccessRegistration value,
          $Res Function(_$SuccessRegistration) then) =
      __$$SuccessRegistrationCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$SuccessRegistrationCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$SuccessRegistration>
    implements _$$SuccessRegistrationCopyWith<$Res> {
  __$$SuccessRegistrationCopyWithImpl(
      _$SuccessRegistration _value, $Res Function(_$SuccessRegistration) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$SuccessRegistration(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuccessRegistration implements SuccessRegistration {
  const _$SuccessRegistration({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'RegistrationState.successRegistration(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessRegistration &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessRegistrationCopyWith<_$SuccessRegistration> get copyWith =>
      __$$SuccessRegistrationCopyWithImpl<_$SuccessRegistration>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String email) awaitConfirmationCode,
    required TResult Function(String error, String email) errorCode,
    required TResult Function(String error) error,
    required TResult Function(String email) successCode,
    required TResult Function(String email) loadingFinish,
    required TResult Function(String email) successRegistration,
  }) {
    return successRegistration(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String email)? awaitConfirmationCode,
    TResult? Function(String error, String email)? errorCode,
    TResult? Function(String error)? error,
    TResult? Function(String email)? successCode,
    TResult? Function(String email)? loadingFinish,
    TResult? Function(String email)? successRegistration,
  }) {
    return successRegistration?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String email)? awaitConfirmationCode,
    TResult Function(String error, String email)? errorCode,
    TResult Function(String error)? error,
    TResult Function(String email)? successCode,
    TResult Function(String email)? loadingFinish,
    TResult Function(String email)? successRegistration,
    required TResult orElse(),
  }) {
    if (successRegistration != null) {
      return successRegistration(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialRegistration value) initial,
    required TResult Function(AwaitConfirmCodeRegistration value)
        awaitConfirmationCode,
    required TResult Function(ErrorCodeRegistration value) errorCode,
    required TResult Function(ErrorRegistration value) error,
    required TResult Function(SuccessCodeRegistration value) successCode,
    required TResult Function(LoadingFinishRegistration value) loadingFinish,
    required TResult Function(SuccessRegistration value) successRegistration,
  }) {
    return successRegistration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialRegistration value)? initial,
    TResult? Function(AwaitConfirmCodeRegistration value)?
        awaitConfirmationCode,
    TResult? Function(ErrorCodeRegistration value)? errorCode,
    TResult? Function(ErrorRegistration value)? error,
    TResult? Function(SuccessCodeRegistration value)? successCode,
    TResult? Function(LoadingFinishRegistration value)? loadingFinish,
    TResult? Function(SuccessRegistration value)? successRegistration,
  }) {
    return successRegistration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialRegistration value)? initial,
    TResult Function(AwaitConfirmCodeRegistration value)? awaitConfirmationCode,
    TResult Function(ErrorCodeRegistration value)? errorCode,
    TResult Function(ErrorRegistration value)? error,
    TResult Function(SuccessCodeRegistration value)? successCode,
    TResult Function(LoadingFinishRegistration value)? loadingFinish,
    TResult Function(SuccessRegistration value)? successRegistration,
    required TResult orElse(),
  }) {
    if (successRegistration != null) {
      return successRegistration(this);
    }
    return orElse();
  }
}

abstract class SuccessRegistration implements RegistrationState {
  const factory SuccessRegistration({required final String email}) =
      _$SuccessRegistration;

  String get email;
  @JsonKey(ignore: true)
  _$$SuccessRegistrationCopyWith<_$SuccessRegistration> get copyWith =>
      throw _privateConstructorUsedError;
}
