// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginStates<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginResponse loginResponse) success,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginResponse loginResponse)? success,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginResponse loginResponse)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialLoginState<T> value) initial,
    required TResult Function(LoadingLoginState<T> value) loading,
    required TResult Function(SuccessLoginState<T> value) success,
    required TResult Function(ErrorLoginState<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialLoginState<T> value)? initial,
    TResult? Function(LoadingLoginState<T> value)? loading,
    TResult? Function(SuccessLoginState<T> value)? success,
    TResult? Function(ErrorLoginState<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialLoginState<T> value)? initial,
    TResult Function(LoadingLoginState<T> value)? loading,
    TResult Function(SuccessLoginState<T> value)? success,
    TResult Function(ErrorLoginState<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStatesCopyWith<T, $Res> {
  factory $LoginStatesCopyWith(
          LoginStates<T> value, $Res Function(LoginStates<T>) then) =
      _$LoginStatesCopyWithImpl<T, $Res, LoginStates<T>>;
}

/// @nodoc
class _$LoginStatesCopyWithImpl<T, $Res, $Val extends LoginStates<T>>
    implements $LoginStatesCopyWith<T, $Res> {
  _$LoginStatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginStates
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialLoginStateImplCopyWith<T, $Res> {
  factory _$$InitialLoginStateImplCopyWith(_$InitialLoginStateImpl<T> value,
          $Res Function(_$InitialLoginStateImpl<T>) then) =
      __$$InitialLoginStateImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialLoginStateImplCopyWithImpl<T, $Res>
    extends _$LoginStatesCopyWithImpl<T, $Res, _$InitialLoginStateImpl<T>>
    implements _$$InitialLoginStateImplCopyWith<T, $Res> {
  __$$InitialLoginStateImplCopyWithImpl(_$InitialLoginStateImpl<T> _value,
      $Res Function(_$InitialLoginStateImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of LoginStates
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialLoginStateImpl<T> implements _InitialLoginState<T> {
  const _$InitialLoginStateImpl();

  @override
  String toString() {
    return 'LoginStates<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialLoginStateImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginResponse loginResponse) success,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginResponse loginResponse)? success,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginResponse loginResponse)? success,
    TResult Function(String error)? error,
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
    required TResult Function(_InitialLoginState<T> value) initial,
    required TResult Function(LoadingLoginState<T> value) loading,
    required TResult Function(SuccessLoginState<T> value) success,
    required TResult Function(ErrorLoginState<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialLoginState<T> value)? initial,
    TResult? Function(LoadingLoginState<T> value)? loading,
    TResult? Function(SuccessLoginState<T> value)? success,
    TResult? Function(ErrorLoginState<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialLoginState<T> value)? initial,
    TResult Function(LoadingLoginState<T> value)? loading,
    TResult Function(SuccessLoginState<T> value)? success,
    TResult Function(ErrorLoginState<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialLoginState<T> implements LoginStates<T> {
  const factory _InitialLoginState() = _$InitialLoginStateImpl<T>;
}

/// @nodoc
abstract class _$$LoadingLoginStateImplCopyWith<T, $Res> {
  factory _$$LoadingLoginStateImplCopyWith(_$LoadingLoginStateImpl<T> value,
          $Res Function(_$LoadingLoginStateImpl<T>) then) =
      __$$LoadingLoginStateImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoadingLoginStateImplCopyWithImpl<T, $Res>
    extends _$LoginStatesCopyWithImpl<T, $Res, _$LoadingLoginStateImpl<T>>
    implements _$$LoadingLoginStateImplCopyWith<T, $Res> {
  __$$LoadingLoginStateImplCopyWithImpl(_$LoadingLoginStateImpl<T> _value,
      $Res Function(_$LoadingLoginStateImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of LoginStates
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingLoginStateImpl<T> implements LoadingLoginState<T> {
  const _$LoadingLoginStateImpl();

  @override
  String toString() {
    return 'LoginStates<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingLoginStateImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginResponse loginResponse) success,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginResponse loginResponse)? success,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginResponse loginResponse)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialLoginState<T> value) initial,
    required TResult Function(LoadingLoginState<T> value) loading,
    required TResult Function(SuccessLoginState<T> value) success,
    required TResult Function(ErrorLoginState<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialLoginState<T> value)? initial,
    TResult? Function(LoadingLoginState<T> value)? loading,
    TResult? Function(SuccessLoginState<T> value)? success,
    TResult? Function(ErrorLoginState<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialLoginState<T> value)? initial,
    TResult Function(LoadingLoginState<T> value)? loading,
    TResult Function(SuccessLoginState<T> value)? success,
    TResult Function(ErrorLoginState<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingLoginState<T> implements LoginStates<T> {
  const factory LoadingLoginState() = _$LoadingLoginStateImpl<T>;
}

/// @nodoc
abstract class _$$SuccessLoginStateImplCopyWith<T, $Res> {
  factory _$$SuccessLoginStateImplCopyWith(_$SuccessLoginStateImpl<T> value,
          $Res Function(_$SuccessLoginStateImpl<T>) then) =
      __$$SuccessLoginStateImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({LoginResponse loginResponse});
}

/// @nodoc
class __$$SuccessLoginStateImplCopyWithImpl<T, $Res>
    extends _$LoginStatesCopyWithImpl<T, $Res, _$SuccessLoginStateImpl<T>>
    implements _$$SuccessLoginStateImplCopyWith<T, $Res> {
  __$$SuccessLoginStateImplCopyWithImpl(_$SuccessLoginStateImpl<T> _value,
      $Res Function(_$SuccessLoginStateImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of LoginStates
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginResponse = null,
  }) {
    return _then(_$SuccessLoginStateImpl<T>(
      null == loginResponse
          ? _value.loginResponse
          : loginResponse // ignore: cast_nullable_to_non_nullable
              as LoginResponse,
    ));
  }
}

/// @nodoc

class _$SuccessLoginStateImpl<T> implements SuccessLoginState<T> {
  const _$SuccessLoginStateImpl(this.loginResponse);

  @override
  final LoginResponse loginResponse;

  @override
  String toString() {
    return 'LoginStates<$T>.success(loginResponse: $loginResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessLoginStateImpl<T> &&
            (identical(other.loginResponse, loginResponse) ||
                other.loginResponse == loginResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginResponse);

  /// Create a copy of LoginStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessLoginStateImplCopyWith<T, _$SuccessLoginStateImpl<T>>
      get copyWith =>
          __$$SuccessLoginStateImplCopyWithImpl<T, _$SuccessLoginStateImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginResponse loginResponse) success,
    required TResult Function(String error) error,
  }) {
    return success(loginResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginResponse loginResponse)? success,
    TResult? Function(String error)? error,
  }) {
    return success?.call(loginResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginResponse loginResponse)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(loginResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialLoginState<T> value) initial,
    required TResult Function(LoadingLoginState<T> value) loading,
    required TResult Function(SuccessLoginState<T> value) success,
    required TResult Function(ErrorLoginState<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialLoginState<T> value)? initial,
    TResult? Function(LoadingLoginState<T> value)? loading,
    TResult? Function(SuccessLoginState<T> value)? success,
    TResult? Function(ErrorLoginState<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialLoginState<T> value)? initial,
    TResult Function(LoadingLoginState<T> value)? loading,
    TResult Function(SuccessLoginState<T> value)? success,
    TResult Function(ErrorLoginState<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessLoginState<T> implements LoginStates<T> {
  const factory SuccessLoginState(final LoginResponse loginResponse) =
      _$SuccessLoginStateImpl<T>;

  LoginResponse get loginResponse;

  /// Create a copy of LoginStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessLoginStateImplCopyWith<T, _$SuccessLoginStateImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorLoginStateImplCopyWith<T, $Res> {
  factory _$$ErrorLoginStateImplCopyWith(_$ErrorLoginStateImpl<T> value,
          $Res Function(_$ErrorLoginStateImpl<T>) then) =
      __$$ErrorLoginStateImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorLoginStateImplCopyWithImpl<T, $Res>
    extends _$LoginStatesCopyWithImpl<T, $Res, _$ErrorLoginStateImpl<T>>
    implements _$$ErrorLoginStateImplCopyWith<T, $Res> {
  __$$ErrorLoginStateImplCopyWithImpl(_$ErrorLoginStateImpl<T> _value,
      $Res Function(_$ErrorLoginStateImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of LoginStates
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorLoginStateImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorLoginStateImpl<T> implements ErrorLoginState<T> {
  const _$ErrorLoginStateImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'LoginStates<$T>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorLoginStateImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of LoginStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorLoginStateImplCopyWith<T, _$ErrorLoginStateImpl<T>> get copyWith =>
      __$$ErrorLoginStateImplCopyWithImpl<T, _$ErrorLoginStateImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginResponse loginResponse) success,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginResponse loginResponse)? success,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginResponse loginResponse)? success,
    TResult Function(String error)? error,
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
    required TResult Function(_InitialLoginState<T> value) initial,
    required TResult Function(LoadingLoginState<T> value) loading,
    required TResult Function(SuccessLoginState<T> value) success,
    required TResult Function(ErrorLoginState<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialLoginState<T> value)? initial,
    TResult? Function(LoadingLoginState<T> value)? loading,
    TResult? Function(SuccessLoginState<T> value)? success,
    TResult? Function(ErrorLoginState<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialLoginState<T> value)? initial,
    TResult Function(LoadingLoginState<T> value)? loading,
    TResult Function(SuccessLoginState<T> value)? success,
    TResult Function(ErrorLoginState<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorLoginState<T> implements LoginStates<T> {
  const factory ErrorLoginState({required final String error}) =
      _$ErrorLoginStateImpl<T>;

  String get error;

  /// Create a copy of LoginStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorLoginStateImplCopyWith<T, _$ErrorLoginStateImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
