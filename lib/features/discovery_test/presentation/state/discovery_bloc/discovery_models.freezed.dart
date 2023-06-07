// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discovery_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DiscoveryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchDiscovery value) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchDiscovery value)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchDiscovery value)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscoveryEventCopyWith<$Res> {
  factory $DiscoveryEventCopyWith(
          DiscoveryEvent value, $Res Function(DiscoveryEvent) then) =
      _$DiscoveryEventCopyWithImpl<$Res, DiscoveryEvent>;
}

/// @nodoc
class _$DiscoveryEventCopyWithImpl<$Res, $Val extends DiscoveryEvent>
    implements $DiscoveryEventCopyWith<$Res> {
  _$DiscoveryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SearchDiscoveryCopyWith<$Res> {
  factory _$$SearchDiscoveryCopyWith(
          _$SearchDiscovery value, $Res Function(_$SearchDiscovery) then) =
      __$$SearchDiscoveryCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchDiscoveryCopyWithImpl<$Res>
    extends _$DiscoveryEventCopyWithImpl<$Res, _$SearchDiscovery>
    implements _$$SearchDiscoveryCopyWith<$Res> {
  __$$SearchDiscoveryCopyWithImpl(
      _$SearchDiscovery _value, $Res Function(_$SearchDiscovery) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchDiscovery implements SearchDiscovery {
  const _$SearchDiscovery();

  @override
  String toString() {
    return 'DiscoveryEvent.search()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchDiscovery);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() search,
  }) {
    return search();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? search,
  }) {
    return search?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchDiscovery value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchDiscovery value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchDiscovery value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class SearchDiscovery implements DiscoveryEvent {
  const factory SearchDiscovery() = _$SearchDiscovery;
}

/// @nodoc
mixin _$DiscoveryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Map<String, String>> devices) success,
    required TResult Function(String error) error,
    required TResult Function(List<Map<String, String>> devices) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Map<String, String>> devices)? success,
    TResult? Function(String error)? error,
    TResult? Function(List<Map<String, String>> devices)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Map<String, String>> devices)? success,
    TResult Function(String error)? error,
    TResult Function(List<Map<String, String>> devices)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialDiscovery value) initial,
    required TResult Function(SuccessDiscovery value) success,
    required TResult Function(ErrorDiscovery value) error,
    required TResult Function(LoadingDiscovery value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialDiscovery value)? initial,
    TResult? Function(SuccessDiscovery value)? success,
    TResult? Function(ErrorDiscovery value)? error,
    TResult? Function(LoadingDiscovery value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialDiscovery value)? initial,
    TResult Function(SuccessDiscovery value)? success,
    TResult Function(ErrorDiscovery value)? error,
    TResult Function(LoadingDiscovery value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscoveryStateCopyWith<$Res> {
  factory $DiscoveryStateCopyWith(
          DiscoveryState value, $Res Function(DiscoveryState) then) =
      _$DiscoveryStateCopyWithImpl<$Res, DiscoveryState>;
}

/// @nodoc
class _$DiscoveryStateCopyWithImpl<$Res, $Val extends DiscoveryState>
    implements $DiscoveryStateCopyWith<$Res> {
  _$DiscoveryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialDiscoveryCopyWith<$Res> {
  factory _$$InitialDiscoveryCopyWith(
          _$InitialDiscovery value, $Res Function(_$InitialDiscovery) then) =
      __$$InitialDiscoveryCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialDiscoveryCopyWithImpl<$Res>
    extends _$DiscoveryStateCopyWithImpl<$Res, _$InitialDiscovery>
    implements _$$InitialDiscoveryCopyWith<$Res> {
  __$$InitialDiscoveryCopyWithImpl(
      _$InitialDiscovery _value, $Res Function(_$InitialDiscovery) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialDiscovery implements InitialDiscovery {
  const _$InitialDiscovery();

  @override
  String toString() {
    return 'DiscoveryState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialDiscovery);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Map<String, String>> devices) success,
    required TResult Function(String error) error,
    required TResult Function(List<Map<String, String>> devices) loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Map<String, String>> devices)? success,
    TResult? Function(String error)? error,
    TResult? Function(List<Map<String, String>> devices)? loading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Map<String, String>> devices)? success,
    TResult Function(String error)? error,
    TResult Function(List<Map<String, String>> devices)? loading,
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
    required TResult Function(InitialDiscovery value) initial,
    required TResult Function(SuccessDiscovery value) success,
    required TResult Function(ErrorDiscovery value) error,
    required TResult Function(LoadingDiscovery value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialDiscovery value)? initial,
    TResult? Function(SuccessDiscovery value)? success,
    TResult? Function(ErrorDiscovery value)? error,
    TResult? Function(LoadingDiscovery value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialDiscovery value)? initial,
    TResult Function(SuccessDiscovery value)? success,
    TResult Function(ErrorDiscovery value)? error,
    TResult Function(LoadingDiscovery value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialDiscovery implements DiscoveryState {
  const factory InitialDiscovery() = _$InitialDiscovery;
}

/// @nodoc
abstract class _$$SuccessDiscoveryCopyWith<$Res> {
  factory _$$SuccessDiscoveryCopyWith(
          _$SuccessDiscovery value, $Res Function(_$SuccessDiscovery) then) =
      __$$SuccessDiscoveryCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Map<String, String>> devices});
}

/// @nodoc
class __$$SuccessDiscoveryCopyWithImpl<$Res>
    extends _$DiscoveryStateCopyWithImpl<$Res, _$SuccessDiscovery>
    implements _$$SuccessDiscoveryCopyWith<$Res> {
  __$$SuccessDiscoveryCopyWithImpl(
      _$SuccessDiscovery _value, $Res Function(_$SuccessDiscovery) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? devices = null,
  }) {
    return _then(_$SuccessDiscovery(
      devices: null == devices
          ? _value._devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>,
    ));
  }
}

/// @nodoc

class _$SuccessDiscovery implements SuccessDiscovery {
  const _$SuccessDiscovery({required final List<Map<String, String>> devices})
      : _devices = devices;

  final List<Map<String, String>> _devices;
  @override
  List<Map<String, String>> get devices {
    if (_devices is EqualUnmodifiableListView) return _devices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_devices);
  }

  @override
  String toString() {
    return 'DiscoveryState.success(devices: $devices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessDiscovery &&
            const DeepCollectionEquality().equals(other._devices, _devices));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_devices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessDiscoveryCopyWith<_$SuccessDiscovery> get copyWith =>
      __$$SuccessDiscoveryCopyWithImpl<_$SuccessDiscovery>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Map<String, String>> devices) success,
    required TResult Function(String error) error,
    required TResult Function(List<Map<String, String>> devices) loading,
  }) {
    return success(devices);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Map<String, String>> devices)? success,
    TResult? Function(String error)? error,
    TResult? Function(List<Map<String, String>> devices)? loading,
  }) {
    return success?.call(devices);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Map<String, String>> devices)? success,
    TResult Function(String error)? error,
    TResult Function(List<Map<String, String>> devices)? loading,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(devices);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialDiscovery value) initial,
    required TResult Function(SuccessDiscovery value) success,
    required TResult Function(ErrorDiscovery value) error,
    required TResult Function(LoadingDiscovery value) loading,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialDiscovery value)? initial,
    TResult? Function(SuccessDiscovery value)? success,
    TResult? Function(ErrorDiscovery value)? error,
    TResult? Function(LoadingDiscovery value)? loading,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialDiscovery value)? initial,
    TResult Function(SuccessDiscovery value)? success,
    TResult Function(ErrorDiscovery value)? error,
    TResult Function(LoadingDiscovery value)? loading,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessDiscovery implements DiscoveryState {
  const factory SuccessDiscovery(
      {required final List<Map<String, String>> devices}) = _$SuccessDiscovery;

  List<Map<String, String>> get devices;
  @JsonKey(ignore: true)
  _$$SuccessDiscoveryCopyWith<_$SuccessDiscovery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorDiscoveryCopyWith<$Res> {
  factory _$$ErrorDiscoveryCopyWith(
          _$ErrorDiscovery value, $Res Function(_$ErrorDiscovery) then) =
      __$$ErrorDiscoveryCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorDiscoveryCopyWithImpl<$Res>
    extends _$DiscoveryStateCopyWithImpl<$Res, _$ErrorDiscovery>
    implements _$$ErrorDiscoveryCopyWith<$Res> {
  __$$ErrorDiscoveryCopyWithImpl(
      _$ErrorDiscovery _value, $Res Function(_$ErrorDiscovery) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorDiscovery(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorDiscovery implements ErrorDiscovery {
  const _$ErrorDiscovery(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'DiscoveryState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorDiscovery &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorDiscoveryCopyWith<_$ErrorDiscovery> get copyWith =>
      __$$ErrorDiscoveryCopyWithImpl<_$ErrorDiscovery>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Map<String, String>> devices) success,
    required TResult Function(String error) error,
    required TResult Function(List<Map<String, String>> devices) loading,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Map<String, String>> devices)? success,
    TResult? Function(String error)? error,
    TResult? Function(List<Map<String, String>> devices)? loading,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Map<String, String>> devices)? success,
    TResult Function(String error)? error,
    TResult Function(List<Map<String, String>> devices)? loading,
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
    required TResult Function(InitialDiscovery value) initial,
    required TResult Function(SuccessDiscovery value) success,
    required TResult Function(ErrorDiscovery value) error,
    required TResult Function(LoadingDiscovery value) loading,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialDiscovery value)? initial,
    TResult? Function(SuccessDiscovery value)? success,
    TResult? Function(ErrorDiscovery value)? error,
    TResult? Function(LoadingDiscovery value)? loading,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialDiscovery value)? initial,
    TResult Function(SuccessDiscovery value)? success,
    TResult Function(ErrorDiscovery value)? error,
    TResult Function(LoadingDiscovery value)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorDiscovery implements DiscoveryState {
  const factory ErrorDiscovery(final String error) = _$ErrorDiscovery;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorDiscoveryCopyWith<_$ErrorDiscovery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingDiscoveryCopyWith<$Res> {
  factory _$$LoadingDiscoveryCopyWith(
          _$LoadingDiscovery value, $Res Function(_$LoadingDiscovery) then) =
      __$$LoadingDiscoveryCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Map<String, String>> devices});
}

/// @nodoc
class __$$LoadingDiscoveryCopyWithImpl<$Res>
    extends _$DiscoveryStateCopyWithImpl<$Res, _$LoadingDiscovery>
    implements _$$LoadingDiscoveryCopyWith<$Res> {
  __$$LoadingDiscoveryCopyWithImpl(
      _$LoadingDiscovery _value, $Res Function(_$LoadingDiscovery) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? devices = null,
  }) {
    return _then(_$LoadingDiscovery(
      devices: null == devices
          ? _value._devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>,
    ));
  }
}

/// @nodoc

class _$LoadingDiscovery implements LoadingDiscovery {
  const _$LoadingDiscovery({required final List<Map<String, String>> devices})
      : _devices = devices;

  final List<Map<String, String>> _devices;
  @override
  List<Map<String, String>> get devices {
    if (_devices is EqualUnmodifiableListView) return _devices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_devices);
  }

  @override
  String toString() {
    return 'DiscoveryState.loading(devices: $devices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingDiscovery &&
            const DeepCollectionEquality().equals(other._devices, _devices));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_devices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingDiscoveryCopyWith<_$LoadingDiscovery> get copyWith =>
      __$$LoadingDiscoveryCopyWithImpl<_$LoadingDiscovery>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Map<String, String>> devices) success,
    required TResult Function(String error) error,
    required TResult Function(List<Map<String, String>> devices) loading,
  }) {
    return loading(devices);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Map<String, String>> devices)? success,
    TResult? Function(String error)? error,
    TResult? Function(List<Map<String, String>> devices)? loading,
  }) {
    return loading?.call(devices);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Map<String, String>> devices)? success,
    TResult Function(String error)? error,
    TResult Function(List<Map<String, String>> devices)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(devices);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialDiscovery value) initial,
    required TResult Function(SuccessDiscovery value) success,
    required TResult Function(ErrorDiscovery value) error,
    required TResult Function(LoadingDiscovery value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialDiscovery value)? initial,
    TResult? Function(SuccessDiscovery value)? success,
    TResult? Function(ErrorDiscovery value)? error,
    TResult? Function(LoadingDiscovery value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialDiscovery value)? initial,
    TResult Function(SuccessDiscovery value)? success,
    TResult Function(ErrorDiscovery value)? error,
    TResult Function(LoadingDiscovery value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingDiscovery implements DiscoveryState {
  const factory LoadingDiscovery(
      {required final List<Map<String, String>> devices}) = _$LoadingDiscovery;

  List<Map<String, String>> get devices;
  @JsonKey(ignore: true)
  _$$LoadingDiscoveryCopyWith<_$LoadingDiscovery> get copyWith =>
      throw _privateConstructorUsedError;
}
