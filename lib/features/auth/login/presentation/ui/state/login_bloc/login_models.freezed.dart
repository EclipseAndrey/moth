// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        loginWithEmailAndPassword,
    required TResult Function() cleanState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginWithEmailAndPassword,
    TResult? Function()? cleanState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginWithEmailAndPassword,
    TResult Function()? cleanState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAndPasswordLogin value)
        loginWithEmailAndPassword,
    required TResult Function(CleanLogin value) cleanState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailAndPasswordLogin value)? loginWithEmailAndPassword,
    TResult? Function(CleanLogin value)? cleanState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAndPasswordLogin value)? loginWithEmailAndPassword,
    TResult Function(CleanLogin value)? cleanState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EmailAndPasswordLoginCopyWith<$Res> {
  factory _$$EmailAndPasswordLoginCopyWith(_$EmailAndPasswordLogin value,
          $Res Function(_$EmailAndPasswordLogin) then) =
      __$$EmailAndPasswordLoginCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$EmailAndPasswordLoginCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$EmailAndPasswordLogin>
    implements _$$EmailAndPasswordLoginCopyWith<$Res> {
  __$$EmailAndPasswordLoginCopyWithImpl(_$EmailAndPasswordLogin _value,
      $Res Function(_$EmailAndPasswordLogin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$EmailAndPasswordLogin(
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

class _$EmailAndPasswordLogin implements EmailAndPasswordLogin {
  const _$EmailAndPasswordLogin({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.loginWithEmailAndPassword(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailAndPasswordLogin &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailAndPasswordLoginCopyWith<_$EmailAndPasswordLogin> get copyWith =>
      __$$EmailAndPasswordLoginCopyWithImpl<_$EmailAndPasswordLogin>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        loginWithEmailAndPassword,
    required TResult Function() cleanState,
  }) {
    return loginWithEmailAndPassword(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginWithEmailAndPassword,
    TResult? Function()? cleanState,
  }) {
    return loginWithEmailAndPassword?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginWithEmailAndPassword,
    TResult Function()? cleanState,
    required TResult orElse(),
  }) {
    if (loginWithEmailAndPassword != null) {
      return loginWithEmailAndPassword(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAndPasswordLogin value)
        loginWithEmailAndPassword,
    required TResult Function(CleanLogin value) cleanState,
  }) {
    return loginWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailAndPasswordLogin value)? loginWithEmailAndPassword,
    TResult? Function(CleanLogin value)? cleanState,
  }) {
    return loginWithEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAndPasswordLogin value)? loginWithEmailAndPassword,
    TResult Function(CleanLogin value)? cleanState,
    required TResult orElse(),
  }) {
    if (loginWithEmailAndPassword != null) {
      return loginWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class EmailAndPasswordLogin implements LoginEvent {
  const factory EmailAndPasswordLogin(
      {required final String email,
      required final String password}) = _$EmailAndPasswordLogin;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$EmailAndPasswordLoginCopyWith<_$EmailAndPasswordLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CleanLoginCopyWith<$Res> {
  factory _$$CleanLoginCopyWith(
          _$CleanLogin value, $Res Function(_$CleanLogin) then) =
      __$$CleanLoginCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CleanLoginCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$CleanLogin>
    implements _$$CleanLoginCopyWith<$Res> {
  __$$CleanLoginCopyWithImpl(
      _$CleanLogin _value, $Res Function(_$CleanLogin) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CleanLogin implements CleanLogin {
  const _$CleanLogin();

  @override
  String toString() {
    return 'LoginEvent.cleanState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CleanLogin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        loginWithEmailAndPassword,
    required TResult Function() cleanState,
  }) {
    return cleanState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginWithEmailAndPassword,
    TResult? Function()? cleanState,
  }) {
    return cleanState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginWithEmailAndPassword,
    TResult Function()? cleanState,
    required TResult orElse(),
  }) {
    if (cleanState != null) {
      return cleanState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailAndPasswordLogin value)
        loginWithEmailAndPassword,
    required TResult Function(CleanLogin value) cleanState,
  }) {
    return cleanState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailAndPasswordLogin value)? loginWithEmailAndPassword,
    TResult? Function(CleanLogin value)? cleanState,
  }) {
    return cleanState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailAndPasswordLogin value)? loginWithEmailAndPassword,
    TResult Function(CleanLogin value)? cleanState,
    required TResult orElse(),
  }) {
    if (cleanState != null) {
      return cleanState(this);
    }
    return orElse();
  }
}

abstract class CleanLogin implements LoginEvent {
  const factory CleanLogin() = _$CleanLogin;
}

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String email) loading,
    required TResult Function(String error) error,
    required TResult Function(String email) successLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String email)? loading,
    TResult? Function(String error)? error,
    TResult? Function(String email)? successLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String email)? loading,
    TResult Function(String error)? error,
    TResult Function(String email)? successLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialLogin value) initial,
    required TResult Function(LoadingLogin value) loading,
    required TResult Function(ErrorLogin value) error,
    required TResult Function(SuccessLogin value) successLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialLogin value)? initial,
    TResult? Function(LoadingLogin value)? loading,
    TResult? Function(ErrorLogin value)? error,
    TResult? Function(SuccessLogin value)? successLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLogin value)? initial,
    TResult Function(LoadingLogin value)? loading,
    TResult Function(ErrorLogin value)? error,
    TResult Function(SuccessLogin value)? successLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialLoginCopyWith<$Res> {
  factory _$$InitialLoginCopyWith(
          _$InitialLogin value, $Res Function(_$InitialLogin) then) =
      __$$InitialLoginCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialLoginCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$InitialLogin>
    implements _$$InitialLoginCopyWith<$Res> {
  __$$InitialLoginCopyWithImpl(
      _$InitialLogin _value, $Res Function(_$InitialLogin) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialLogin implements InitialLogin {
  const _$InitialLogin();

  @override
  String toString() {
    return 'LoginState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialLogin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String email) loading,
    required TResult Function(String error) error,
    required TResult Function(String email) successLogin,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String email)? loading,
    TResult? Function(String error)? error,
    TResult? Function(String email)? successLogin,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String email)? loading,
    TResult Function(String error)? error,
    TResult Function(String email)? successLogin,
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
    required TResult Function(InitialLogin value) initial,
    required TResult Function(LoadingLogin value) loading,
    required TResult Function(ErrorLogin value) error,
    required TResult Function(SuccessLogin value) successLogin,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialLogin value)? initial,
    TResult? Function(LoadingLogin value)? loading,
    TResult? Function(ErrorLogin value)? error,
    TResult? Function(SuccessLogin value)? successLogin,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLogin value)? initial,
    TResult Function(LoadingLogin value)? loading,
    TResult Function(ErrorLogin value)? error,
    TResult Function(SuccessLogin value)? successLogin,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialLogin implements LoginState {
  const factory InitialLogin() = _$InitialLogin;
}

/// @nodoc
abstract class _$$LoadingLoginCopyWith<$Res> {
  factory _$$LoadingLoginCopyWith(
          _$LoadingLogin value, $Res Function(_$LoadingLogin) then) =
      __$$LoadingLoginCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$LoadingLoginCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoadingLogin>
    implements _$$LoadingLoginCopyWith<$Res> {
  __$$LoadingLoginCopyWithImpl(
      _$LoadingLogin _value, $Res Function(_$LoadingLogin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$LoadingLogin(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadingLogin implements LoadingLogin {
  const _$LoadingLogin({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'LoginState.loading(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingLogin &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingLoginCopyWith<_$LoadingLogin> get copyWith =>
      __$$LoadingLoginCopyWithImpl<_$LoadingLogin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String email) loading,
    required TResult Function(String error) error,
    required TResult Function(String email) successLogin,
  }) {
    return loading(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String email)? loading,
    TResult? Function(String error)? error,
    TResult? Function(String email)? successLogin,
  }) {
    return loading?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String email)? loading,
    TResult Function(String error)? error,
    TResult Function(String email)? successLogin,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialLogin value) initial,
    required TResult Function(LoadingLogin value) loading,
    required TResult Function(ErrorLogin value) error,
    required TResult Function(SuccessLogin value) successLogin,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialLogin value)? initial,
    TResult? Function(LoadingLogin value)? loading,
    TResult? Function(ErrorLogin value)? error,
    TResult? Function(SuccessLogin value)? successLogin,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLogin value)? initial,
    TResult Function(LoadingLogin value)? loading,
    TResult Function(ErrorLogin value)? error,
    TResult Function(SuccessLogin value)? successLogin,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingLogin implements LoginState {
  const factory LoadingLogin({required final String email}) = _$LoadingLogin;

  String get email;
  @JsonKey(ignore: true)
  _$$LoadingLoginCopyWith<_$LoadingLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorLoginCopyWith<$Res> {
  factory _$$ErrorLoginCopyWith(
          _$ErrorLogin value, $Res Function(_$ErrorLogin) then) =
      __$$ErrorLoginCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorLoginCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$ErrorLogin>
    implements _$$ErrorLoginCopyWith<$Res> {
  __$$ErrorLoginCopyWithImpl(
      _$ErrorLogin _value, $Res Function(_$ErrorLogin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorLogin(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorLogin implements ErrorLogin {
  const _$ErrorLogin(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'LoginState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorLogin &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorLoginCopyWith<_$ErrorLogin> get copyWith =>
      __$$ErrorLoginCopyWithImpl<_$ErrorLogin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String email) loading,
    required TResult Function(String error) error,
    required TResult Function(String email) successLogin,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String email)? loading,
    TResult? Function(String error)? error,
    TResult? Function(String email)? successLogin,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String email)? loading,
    TResult Function(String error)? error,
    TResult Function(String email)? successLogin,
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
    required TResult Function(InitialLogin value) initial,
    required TResult Function(LoadingLogin value) loading,
    required TResult Function(ErrorLogin value) error,
    required TResult Function(SuccessLogin value) successLogin,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialLogin value)? initial,
    TResult? Function(LoadingLogin value)? loading,
    TResult? Function(ErrorLogin value)? error,
    TResult? Function(SuccessLogin value)? successLogin,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLogin value)? initial,
    TResult Function(LoadingLogin value)? loading,
    TResult Function(ErrorLogin value)? error,
    TResult Function(SuccessLogin value)? successLogin,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorLogin implements LoginState {
  const factory ErrorLogin(final String error) = _$ErrorLogin;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorLoginCopyWith<_$ErrorLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessLoginCopyWith<$Res> {
  factory _$$SuccessLoginCopyWith(
          _$SuccessLogin value, $Res Function(_$SuccessLogin) then) =
      __$$SuccessLoginCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$SuccessLoginCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$SuccessLogin>
    implements _$$SuccessLoginCopyWith<$Res> {
  __$$SuccessLoginCopyWithImpl(
      _$SuccessLogin _value, $Res Function(_$SuccessLogin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$SuccessLogin(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuccessLogin implements SuccessLogin {
  const _$SuccessLogin({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'LoginState.successLogin(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessLogin &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessLoginCopyWith<_$SuccessLogin> get copyWith =>
      __$$SuccessLoginCopyWithImpl<_$SuccessLogin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String email) loading,
    required TResult Function(String error) error,
    required TResult Function(String email) successLogin,
  }) {
    return successLogin(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String email)? loading,
    TResult? Function(String error)? error,
    TResult? Function(String email)? successLogin,
  }) {
    return successLogin?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String email)? loading,
    TResult Function(String error)? error,
    TResult Function(String email)? successLogin,
    required TResult orElse(),
  }) {
    if (successLogin != null) {
      return successLogin(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialLogin value) initial,
    required TResult Function(LoadingLogin value) loading,
    required TResult Function(ErrorLogin value) error,
    required TResult Function(SuccessLogin value) successLogin,
  }) {
    return successLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialLogin value)? initial,
    TResult? Function(LoadingLogin value)? loading,
    TResult? Function(ErrorLogin value)? error,
    TResult? Function(SuccessLogin value)? successLogin,
  }) {
    return successLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLogin value)? initial,
    TResult Function(LoadingLogin value)? loading,
    TResult Function(ErrorLogin value)? error,
    TResult Function(SuccessLogin value)? successLogin,
    required TResult orElse(),
  }) {
    if (successLogin != null) {
      return successLogin(this);
    }
    return orElse();
  }
}

abstract class SuccessLogin implements LoginState {
  const factory SuccessLogin({required final String email}) = _$SuccessLogin;

  String get email;
  @JsonKey(ignore: true)
  _$$SuccessLoginCopyWith<_$SuccessLogin> get copyWith =>
      throw _privateConstructorUsedError;
}
