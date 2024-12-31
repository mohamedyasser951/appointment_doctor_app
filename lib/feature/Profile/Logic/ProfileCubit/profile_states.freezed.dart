// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileStates<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() profileInitialState,
    required TResult Function() getProfileLoadingState,
    required TResult Function(UserDataModel usermodel) getPofileSuccessState,
    required TResult Function(ApiErrorModel errorModel) getPofileErrorState,
    required TResult Function() updateProfileLoadingState,
    required TResult Function(
            UpdateProfileResponseBody updateProfileResponseBody)
        updatePofileSuccessState,
    required TResult Function(ApiErrorModel errorModel) updatePofileErrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? profileInitialState,
    TResult? Function()? getProfileLoadingState,
    TResult? Function(UserDataModel usermodel)? getPofileSuccessState,
    TResult? Function(ApiErrorModel errorModel)? getPofileErrorState,
    TResult? Function()? updateProfileLoadingState,
    TResult? Function(UpdateProfileResponseBody updateProfileResponseBody)?
        updatePofileSuccessState,
    TResult? Function(ApiErrorModel errorModel)? updatePofileErrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? profileInitialState,
    TResult Function()? getProfileLoadingState,
    TResult Function(UserDataModel usermodel)? getPofileSuccessState,
    TResult Function(ApiErrorModel errorModel)? getPofileErrorState,
    TResult Function()? updateProfileLoadingState,
    TResult Function(UpdateProfileResponseBody updateProfileResponseBody)?
        updatePofileSuccessState,
    TResult Function(ApiErrorModel errorModel)? updatePofileErrorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_profileInitialState<T> value)
        profileInitialState,
    required TResult Function(GetProfileLoadingState<T> value)
        getProfileLoadingState,
    required TResult Function(GetPofileSuccessState<T> value)
        getPofileSuccessState,
    required TResult Function(GetProfileErrorState<T> value)
        getPofileErrorState,
    required TResult Function(UpdateProfileLoadingState<T> value)
        updateProfileLoadingState,
    required TResult Function(UpdatePofileSuccessState<T> value)
        updatePofileSuccessState,
    required TResult Function(UpdateProfileErrorState<T> value)
        updatePofileErrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_profileInitialState<T> value)? profileInitialState,
    TResult? Function(GetProfileLoadingState<T> value)? getProfileLoadingState,
    TResult? Function(GetPofileSuccessState<T> value)? getPofileSuccessState,
    TResult? Function(GetProfileErrorState<T> value)? getPofileErrorState,
    TResult? Function(UpdateProfileLoadingState<T> value)?
        updateProfileLoadingState,
    TResult? Function(UpdatePofileSuccessState<T> value)?
        updatePofileSuccessState,
    TResult? Function(UpdateProfileErrorState<T> value)? updatePofileErrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_profileInitialState<T> value)? profileInitialState,
    TResult Function(GetProfileLoadingState<T> value)? getProfileLoadingState,
    TResult Function(GetPofileSuccessState<T> value)? getPofileSuccessState,
    TResult Function(GetProfileErrorState<T> value)? getPofileErrorState,
    TResult Function(UpdateProfileLoadingState<T> value)?
        updateProfileLoadingState,
    TResult Function(UpdatePofileSuccessState<T> value)?
        updatePofileSuccessState,
    TResult Function(UpdateProfileErrorState<T> value)? updatePofileErrorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStatesCopyWith<T, $Res> {
  factory $ProfileStatesCopyWith(
          ProfileStates<T> value, $Res Function(ProfileStates<T>) then) =
      _$ProfileStatesCopyWithImpl<T, $Res, ProfileStates<T>>;
}

/// @nodoc
class _$ProfileStatesCopyWithImpl<T, $Res, $Val extends ProfileStates<T>>
    implements $ProfileStatesCopyWith<T, $Res> {
  _$ProfileStatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileStates
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$profileInitialStateImplCopyWith<T, $Res> {
  factory _$$profileInitialStateImplCopyWith(_$profileInitialStateImpl<T> value,
          $Res Function(_$profileInitialStateImpl<T>) then) =
      __$$profileInitialStateImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$profileInitialStateImplCopyWithImpl<T, $Res>
    extends _$ProfileStatesCopyWithImpl<T, $Res, _$profileInitialStateImpl<T>>
    implements _$$profileInitialStateImplCopyWith<T, $Res> {
  __$$profileInitialStateImplCopyWithImpl(_$profileInitialStateImpl<T> _value,
      $Res Function(_$profileInitialStateImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ProfileStates
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$profileInitialStateImpl<T>
    with DiagnosticableTreeMixin
    implements _profileInitialState<T> {
  const _$profileInitialStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileStates<$T>.profileInitialState()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'ProfileStates<$T>.profileInitialState'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$profileInitialStateImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() profileInitialState,
    required TResult Function() getProfileLoadingState,
    required TResult Function(UserDataModel usermodel) getPofileSuccessState,
    required TResult Function(ApiErrorModel errorModel) getPofileErrorState,
    required TResult Function() updateProfileLoadingState,
    required TResult Function(
            UpdateProfileResponseBody updateProfileResponseBody)
        updatePofileSuccessState,
    required TResult Function(ApiErrorModel errorModel) updatePofileErrorState,
  }) {
    return profileInitialState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? profileInitialState,
    TResult? Function()? getProfileLoadingState,
    TResult? Function(UserDataModel usermodel)? getPofileSuccessState,
    TResult? Function(ApiErrorModel errorModel)? getPofileErrorState,
    TResult? Function()? updateProfileLoadingState,
    TResult? Function(UpdateProfileResponseBody updateProfileResponseBody)?
        updatePofileSuccessState,
    TResult? Function(ApiErrorModel errorModel)? updatePofileErrorState,
  }) {
    return profileInitialState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? profileInitialState,
    TResult Function()? getProfileLoadingState,
    TResult Function(UserDataModel usermodel)? getPofileSuccessState,
    TResult Function(ApiErrorModel errorModel)? getPofileErrorState,
    TResult Function()? updateProfileLoadingState,
    TResult Function(UpdateProfileResponseBody updateProfileResponseBody)?
        updatePofileSuccessState,
    TResult Function(ApiErrorModel errorModel)? updatePofileErrorState,
    required TResult orElse(),
  }) {
    if (profileInitialState != null) {
      return profileInitialState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_profileInitialState<T> value)
        profileInitialState,
    required TResult Function(GetProfileLoadingState<T> value)
        getProfileLoadingState,
    required TResult Function(GetPofileSuccessState<T> value)
        getPofileSuccessState,
    required TResult Function(GetProfileErrorState<T> value)
        getPofileErrorState,
    required TResult Function(UpdateProfileLoadingState<T> value)
        updateProfileLoadingState,
    required TResult Function(UpdatePofileSuccessState<T> value)
        updatePofileSuccessState,
    required TResult Function(UpdateProfileErrorState<T> value)
        updatePofileErrorState,
  }) {
    return profileInitialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_profileInitialState<T> value)? profileInitialState,
    TResult? Function(GetProfileLoadingState<T> value)? getProfileLoadingState,
    TResult? Function(GetPofileSuccessState<T> value)? getPofileSuccessState,
    TResult? Function(GetProfileErrorState<T> value)? getPofileErrorState,
    TResult? Function(UpdateProfileLoadingState<T> value)?
        updateProfileLoadingState,
    TResult? Function(UpdatePofileSuccessState<T> value)?
        updatePofileSuccessState,
    TResult? Function(UpdateProfileErrorState<T> value)? updatePofileErrorState,
  }) {
    return profileInitialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_profileInitialState<T> value)? profileInitialState,
    TResult Function(GetProfileLoadingState<T> value)? getProfileLoadingState,
    TResult Function(GetPofileSuccessState<T> value)? getPofileSuccessState,
    TResult Function(GetProfileErrorState<T> value)? getPofileErrorState,
    TResult Function(UpdateProfileLoadingState<T> value)?
        updateProfileLoadingState,
    TResult Function(UpdatePofileSuccessState<T> value)?
        updatePofileSuccessState,
    TResult Function(UpdateProfileErrorState<T> value)? updatePofileErrorState,
    required TResult orElse(),
  }) {
    if (profileInitialState != null) {
      return profileInitialState(this);
    }
    return orElse();
  }
}

abstract class _profileInitialState<T> implements ProfileStates<T> {
  const factory _profileInitialState() = _$profileInitialStateImpl<T>;
}

/// @nodoc
abstract class _$$GetProfileLoadingStateImplCopyWith<T, $Res> {
  factory _$$GetProfileLoadingStateImplCopyWith(
          _$GetProfileLoadingStateImpl<T> value,
          $Res Function(_$GetProfileLoadingStateImpl<T>) then) =
      __$$GetProfileLoadingStateImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$GetProfileLoadingStateImplCopyWithImpl<T, $Res>
    extends _$ProfileStatesCopyWithImpl<T, $Res,
        _$GetProfileLoadingStateImpl<T>>
    implements _$$GetProfileLoadingStateImplCopyWith<T, $Res> {
  __$$GetProfileLoadingStateImplCopyWithImpl(
      _$GetProfileLoadingStateImpl<T> _value,
      $Res Function(_$GetProfileLoadingStateImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ProfileStates
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetProfileLoadingStateImpl<T>
    with DiagnosticableTreeMixin
    implements GetProfileLoadingState<T> {
  const _$GetProfileLoadingStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileStates<$T>.getProfileLoadingState()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'ProfileStates<$T>.getProfileLoadingState'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProfileLoadingStateImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() profileInitialState,
    required TResult Function() getProfileLoadingState,
    required TResult Function(UserDataModel usermodel) getPofileSuccessState,
    required TResult Function(ApiErrorModel errorModel) getPofileErrorState,
    required TResult Function() updateProfileLoadingState,
    required TResult Function(
            UpdateProfileResponseBody updateProfileResponseBody)
        updatePofileSuccessState,
    required TResult Function(ApiErrorModel errorModel) updatePofileErrorState,
  }) {
    return getProfileLoadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? profileInitialState,
    TResult? Function()? getProfileLoadingState,
    TResult? Function(UserDataModel usermodel)? getPofileSuccessState,
    TResult? Function(ApiErrorModel errorModel)? getPofileErrorState,
    TResult? Function()? updateProfileLoadingState,
    TResult? Function(UpdateProfileResponseBody updateProfileResponseBody)?
        updatePofileSuccessState,
    TResult? Function(ApiErrorModel errorModel)? updatePofileErrorState,
  }) {
    return getProfileLoadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? profileInitialState,
    TResult Function()? getProfileLoadingState,
    TResult Function(UserDataModel usermodel)? getPofileSuccessState,
    TResult Function(ApiErrorModel errorModel)? getPofileErrorState,
    TResult Function()? updateProfileLoadingState,
    TResult Function(UpdateProfileResponseBody updateProfileResponseBody)?
        updatePofileSuccessState,
    TResult Function(ApiErrorModel errorModel)? updatePofileErrorState,
    required TResult orElse(),
  }) {
    if (getProfileLoadingState != null) {
      return getProfileLoadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_profileInitialState<T> value)
        profileInitialState,
    required TResult Function(GetProfileLoadingState<T> value)
        getProfileLoadingState,
    required TResult Function(GetPofileSuccessState<T> value)
        getPofileSuccessState,
    required TResult Function(GetProfileErrorState<T> value)
        getPofileErrorState,
    required TResult Function(UpdateProfileLoadingState<T> value)
        updateProfileLoadingState,
    required TResult Function(UpdatePofileSuccessState<T> value)
        updatePofileSuccessState,
    required TResult Function(UpdateProfileErrorState<T> value)
        updatePofileErrorState,
  }) {
    return getProfileLoadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_profileInitialState<T> value)? profileInitialState,
    TResult? Function(GetProfileLoadingState<T> value)? getProfileLoadingState,
    TResult? Function(GetPofileSuccessState<T> value)? getPofileSuccessState,
    TResult? Function(GetProfileErrorState<T> value)? getPofileErrorState,
    TResult? Function(UpdateProfileLoadingState<T> value)?
        updateProfileLoadingState,
    TResult? Function(UpdatePofileSuccessState<T> value)?
        updatePofileSuccessState,
    TResult? Function(UpdateProfileErrorState<T> value)? updatePofileErrorState,
  }) {
    return getProfileLoadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_profileInitialState<T> value)? profileInitialState,
    TResult Function(GetProfileLoadingState<T> value)? getProfileLoadingState,
    TResult Function(GetPofileSuccessState<T> value)? getPofileSuccessState,
    TResult Function(GetProfileErrorState<T> value)? getPofileErrorState,
    TResult Function(UpdateProfileLoadingState<T> value)?
        updateProfileLoadingState,
    TResult Function(UpdatePofileSuccessState<T> value)?
        updatePofileSuccessState,
    TResult Function(UpdateProfileErrorState<T> value)? updatePofileErrorState,
    required TResult orElse(),
  }) {
    if (getProfileLoadingState != null) {
      return getProfileLoadingState(this);
    }
    return orElse();
  }
}

abstract class GetProfileLoadingState<T> implements ProfileStates<T> {
  const factory GetProfileLoadingState() = _$GetProfileLoadingStateImpl<T>;
}

/// @nodoc
abstract class _$$GetPofileSuccessStateImplCopyWith<T, $Res> {
  factory _$$GetPofileSuccessStateImplCopyWith(
          _$GetPofileSuccessStateImpl<T> value,
          $Res Function(_$GetPofileSuccessStateImpl<T>) then) =
      __$$GetPofileSuccessStateImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({UserDataModel usermodel});
}

/// @nodoc
class __$$GetPofileSuccessStateImplCopyWithImpl<T, $Res>
    extends _$ProfileStatesCopyWithImpl<T, $Res, _$GetPofileSuccessStateImpl<T>>
    implements _$$GetPofileSuccessStateImplCopyWith<T, $Res> {
  __$$GetPofileSuccessStateImplCopyWithImpl(
      _$GetPofileSuccessStateImpl<T> _value,
      $Res Function(_$GetPofileSuccessStateImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ProfileStates
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usermodel = null,
  }) {
    return _then(_$GetPofileSuccessStateImpl<T>(
      null == usermodel
          ? _value.usermodel
          : usermodel // ignore: cast_nullable_to_non_nullable
              as UserDataModel,
    ));
  }
}

/// @nodoc

class _$GetPofileSuccessStateImpl<T>
    with DiagnosticableTreeMixin
    implements GetPofileSuccessState<T> {
  const _$GetPofileSuccessStateImpl(this.usermodel);

  @override
  final UserDataModel usermodel;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileStates<$T>.getPofileSuccessState(usermodel: $usermodel)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ProfileStates<$T>.getPofileSuccessState'))
      ..add(DiagnosticsProperty('usermodel', usermodel));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPofileSuccessStateImpl<T> &&
            (identical(other.usermodel, usermodel) ||
                other.usermodel == usermodel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, usermodel);

  /// Create a copy of ProfileStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPofileSuccessStateImplCopyWith<T, _$GetPofileSuccessStateImpl<T>>
      get copyWith => __$$GetPofileSuccessStateImplCopyWithImpl<T,
          _$GetPofileSuccessStateImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() profileInitialState,
    required TResult Function() getProfileLoadingState,
    required TResult Function(UserDataModel usermodel) getPofileSuccessState,
    required TResult Function(ApiErrorModel errorModel) getPofileErrorState,
    required TResult Function() updateProfileLoadingState,
    required TResult Function(
            UpdateProfileResponseBody updateProfileResponseBody)
        updatePofileSuccessState,
    required TResult Function(ApiErrorModel errorModel) updatePofileErrorState,
  }) {
    return getPofileSuccessState(usermodel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? profileInitialState,
    TResult? Function()? getProfileLoadingState,
    TResult? Function(UserDataModel usermodel)? getPofileSuccessState,
    TResult? Function(ApiErrorModel errorModel)? getPofileErrorState,
    TResult? Function()? updateProfileLoadingState,
    TResult? Function(UpdateProfileResponseBody updateProfileResponseBody)?
        updatePofileSuccessState,
    TResult? Function(ApiErrorModel errorModel)? updatePofileErrorState,
  }) {
    return getPofileSuccessState?.call(usermodel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? profileInitialState,
    TResult Function()? getProfileLoadingState,
    TResult Function(UserDataModel usermodel)? getPofileSuccessState,
    TResult Function(ApiErrorModel errorModel)? getPofileErrorState,
    TResult Function()? updateProfileLoadingState,
    TResult Function(UpdateProfileResponseBody updateProfileResponseBody)?
        updatePofileSuccessState,
    TResult Function(ApiErrorModel errorModel)? updatePofileErrorState,
    required TResult orElse(),
  }) {
    if (getPofileSuccessState != null) {
      return getPofileSuccessState(usermodel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_profileInitialState<T> value)
        profileInitialState,
    required TResult Function(GetProfileLoadingState<T> value)
        getProfileLoadingState,
    required TResult Function(GetPofileSuccessState<T> value)
        getPofileSuccessState,
    required TResult Function(GetProfileErrorState<T> value)
        getPofileErrorState,
    required TResult Function(UpdateProfileLoadingState<T> value)
        updateProfileLoadingState,
    required TResult Function(UpdatePofileSuccessState<T> value)
        updatePofileSuccessState,
    required TResult Function(UpdateProfileErrorState<T> value)
        updatePofileErrorState,
  }) {
    return getPofileSuccessState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_profileInitialState<T> value)? profileInitialState,
    TResult? Function(GetProfileLoadingState<T> value)? getProfileLoadingState,
    TResult? Function(GetPofileSuccessState<T> value)? getPofileSuccessState,
    TResult? Function(GetProfileErrorState<T> value)? getPofileErrorState,
    TResult? Function(UpdateProfileLoadingState<T> value)?
        updateProfileLoadingState,
    TResult? Function(UpdatePofileSuccessState<T> value)?
        updatePofileSuccessState,
    TResult? Function(UpdateProfileErrorState<T> value)? updatePofileErrorState,
  }) {
    return getPofileSuccessState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_profileInitialState<T> value)? profileInitialState,
    TResult Function(GetProfileLoadingState<T> value)? getProfileLoadingState,
    TResult Function(GetPofileSuccessState<T> value)? getPofileSuccessState,
    TResult Function(GetProfileErrorState<T> value)? getPofileErrorState,
    TResult Function(UpdateProfileLoadingState<T> value)?
        updateProfileLoadingState,
    TResult Function(UpdatePofileSuccessState<T> value)?
        updatePofileSuccessState,
    TResult Function(UpdateProfileErrorState<T> value)? updatePofileErrorState,
    required TResult orElse(),
  }) {
    if (getPofileSuccessState != null) {
      return getPofileSuccessState(this);
    }
    return orElse();
  }
}

abstract class GetPofileSuccessState<T> implements ProfileStates<T> {
  const factory GetPofileSuccessState(final UserDataModel usermodel) =
      _$GetPofileSuccessStateImpl<T>;

  UserDataModel get usermodel;

  /// Create a copy of ProfileStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetPofileSuccessStateImplCopyWith<T, _$GetPofileSuccessStateImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetProfileErrorStateImplCopyWith<T, $Res> {
  factory _$$GetProfileErrorStateImplCopyWith(
          _$GetProfileErrorStateImpl<T> value,
          $Res Function(_$GetProfileErrorStateImpl<T>) then) =
      __$$GetProfileErrorStateImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ApiErrorModel errorModel});
}

/// @nodoc
class __$$GetProfileErrorStateImplCopyWithImpl<T, $Res>
    extends _$ProfileStatesCopyWithImpl<T, $Res, _$GetProfileErrorStateImpl<T>>
    implements _$$GetProfileErrorStateImplCopyWith<T, $Res> {
  __$$GetProfileErrorStateImplCopyWithImpl(_$GetProfileErrorStateImpl<T> _value,
      $Res Function(_$GetProfileErrorStateImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ProfileStates
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorModel = null,
  }) {
    return _then(_$GetProfileErrorStateImpl<T>(
      null == errorModel
          ? _value.errorModel
          : errorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$GetProfileErrorStateImpl<T>
    with DiagnosticableTreeMixin
    implements GetProfileErrorState<T> {
  const _$GetProfileErrorStateImpl(this.errorModel);

  @override
  final ApiErrorModel errorModel;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileStates<$T>.getPofileErrorState(errorModel: $errorModel)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'ProfileStates<$T>.getPofileErrorState'))
      ..add(DiagnosticsProperty('errorModel', errorModel));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProfileErrorStateImpl<T> &&
            (identical(other.errorModel, errorModel) ||
                other.errorModel == errorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorModel);

  /// Create a copy of ProfileStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProfileErrorStateImplCopyWith<T, _$GetProfileErrorStateImpl<T>>
      get copyWith => __$$GetProfileErrorStateImplCopyWithImpl<T,
          _$GetProfileErrorStateImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() profileInitialState,
    required TResult Function() getProfileLoadingState,
    required TResult Function(UserDataModel usermodel) getPofileSuccessState,
    required TResult Function(ApiErrorModel errorModel) getPofileErrorState,
    required TResult Function() updateProfileLoadingState,
    required TResult Function(
            UpdateProfileResponseBody updateProfileResponseBody)
        updatePofileSuccessState,
    required TResult Function(ApiErrorModel errorModel) updatePofileErrorState,
  }) {
    return getPofileErrorState(errorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? profileInitialState,
    TResult? Function()? getProfileLoadingState,
    TResult? Function(UserDataModel usermodel)? getPofileSuccessState,
    TResult? Function(ApiErrorModel errorModel)? getPofileErrorState,
    TResult? Function()? updateProfileLoadingState,
    TResult? Function(UpdateProfileResponseBody updateProfileResponseBody)?
        updatePofileSuccessState,
    TResult? Function(ApiErrorModel errorModel)? updatePofileErrorState,
  }) {
    return getPofileErrorState?.call(errorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? profileInitialState,
    TResult Function()? getProfileLoadingState,
    TResult Function(UserDataModel usermodel)? getPofileSuccessState,
    TResult Function(ApiErrorModel errorModel)? getPofileErrorState,
    TResult Function()? updateProfileLoadingState,
    TResult Function(UpdateProfileResponseBody updateProfileResponseBody)?
        updatePofileSuccessState,
    TResult Function(ApiErrorModel errorModel)? updatePofileErrorState,
    required TResult orElse(),
  }) {
    if (getPofileErrorState != null) {
      return getPofileErrorState(errorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_profileInitialState<T> value)
        profileInitialState,
    required TResult Function(GetProfileLoadingState<T> value)
        getProfileLoadingState,
    required TResult Function(GetPofileSuccessState<T> value)
        getPofileSuccessState,
    required TResult Function(GetProfileErrorState<T> value)
        getPofileErrorState,
    required TResult Function(UpdateProfileLoadingState<T> value)
        updateProfileLoadingState,
    required TResult Function(UpdatePofileSuccessState<T> value)
        updatePofileSuccessState,
    required TResult Function(UpdateProfileErrorState<T> value)
        updatePofileErrorState,
  }) {
    return getPofileErrorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_profileInitialState<T> value)? profileInitialState,
    TResult? Function(GetProfileLoadingState<T> value)? getProfileLoadingState,
    TResult? Function(GetPofileSuccessState<T> value)? getPofileSuccessState,
    TResult? Function(GetProfileErrorState<T> value)? getPofileErrorState,
    TResult? Function(UpdateProfileLoadingState<T> value)?
        updateProfileLoadingState,
    TResult? Function(UpdatePofileSuccessState<T> value)?
        updatePofileSuccessState,
    TResult? Function(UpdateProfileErrorState<T> value)? updatePofileErrorState,
  }) {
    return getPofileErrorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_profileInitialState<T> value)? profileInitialState,
    TResult Function(GetProfileLoadingState<T> value)? getProfileLoadingState,
    TResult Function(GetPofileSuccessState<T> value)? getPofileSuccessState,
    TResult Function(GetProfileErrorState<T> value)? getPofileErrorState,
    TResult Function(UpdateProfileLoadingState<T> value)?
        updateProfileLoadingState,
    TResult Function(UpdatePofileSuccessState<T> value)?
        updatePofileSuccessState,
    TResult Function(UpdateProfileErrorState<T> value)? updatePofileErrorState,
    required TResult orElse(),
  }) {
    if (getPofileErrorState != null) {
      return getPofileErrorState(this);
    }
    return orElse();
  }
}

abstract class GetProfileErrorState<T> implements ProfileStates<T> {
  const factory GetProfileErrorState(final ApiErrorModel errorModel) =
      _$GetProfileErrorStateImpl<T>;

  ApiErrorModel get errorModel;

  /// Create a copy of ProfileStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetProfileErrorStateImplCopyWith<T, _$GetProfileErrorStateImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateProfileLoadingStateImplCopyWith<T, $Res> {
  factory _$$UpdateProfileLoadingStateImplCopyWith(
          _$UpdateProfileLoadingStateImpl<T> value,
          $Res Function(_$UpdateProfileLoadingStateImpl<T>) then) =
      __$$UpdateProfileLoadingStateImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$UpdateProfileLoadingStateImplCopyWithImpl<T, $Res>
    extends _$ProfileStatesCopyWithImpl<T, $Res,
        _$UpdateProfileLoadingStateImpl<T>>
    implements _$$UpdateProfileLoadingStateImplCopyWith<T, $Res> {
  __$$UpdateProfileLoadingStateImplCopyWithImpl(
      _$UpdateProfileLoadingStateImpl<T> _value,
      $Res Function(_$UpdateProfileLoadingStateImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ProfileStates
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UpdateProfileLoadingStateImpl<T>
    with DiagnosticableTreeMixin
    implements UpdateProfileLoadingState<T> {
  const _$UpdateProfileLoadingStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileStates<$T>.updateProfileLoadingState()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'ProfileStates<$T>.updateProfileLoadingState'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileLoadingStateImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() profileInitialState,
    required TResult Function() getProfileLoadingState,
    required TResult Function(UserDataModel usermodel) getPofileSuccessState,
    required TResult Function(ApiErrorModel errorModel) getPofileErrorState,
    required TResult Function() updateProfileLoadingState,
    required TResult Function(
            UpdateProfileResponseBody updateProfileResponseBody)
        updatePofileSuccessState,
    required TResult Function(ApiErrorModel errorModel) updatePofileErrorState,
  }) {
    return updateProfileLoadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? profileInitialState,
    TResult? Function()? getProfileLoadingState,
    TResult? Function(UserDataModel usermodel)? getPofileSuccessState,
    TResult? Function(ApiErrorModel errorModel)? getPofileErrorState,
    TResult? Function()? updateProfileLoadingState,
    TResult? Function(UpdateProfileResponseBody updateProfileResponseBody)?
        updatePofileSuccessState,
    TResult? Function(ApiErrorModel errorModel)? updatePofileErrorState,
  }) {
    return updateProfileLoadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? profileInitialState,
    TResult Function()? getProfileLoadingState,
    TResult Function(UserDataModel usermodel)? getPofileSuccessState,
    TResult Function(ApiErrorModel errorModel)? getPofileErrorState,
    TResult Function()? updateProfileLoadingState,
    TResult Function(UpdateProfileResponseBody updateProfileResponseBody)?
        updatePofileSuccessState,
    TResult Function(ApiErrorModel errorModel)? updatePofileErrorState,
    required TResult orElse(),
  }) {
    if (updateProfileLoadingState != null) {
      return updateProfileLoadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_profileInitialState<T> value)
        profileInitialState,
    required TResult Function(GetProfileLoadingState<T> value)
        getProfileLoadingState,
    required TResult Function(GetPofileSuccessState<T> value)
        getPofileSuccessState,
    required TResult Function(GetProfileErrorState<T> value)
        getPofileErrorState,
    required TResult Function(UpdateProfileLoadingState<T> value)
        updateProfileLoadingState,
    required TResult Function(UpdatePofileSuccessState<T> value)
        updatePofileSuccessState,
    required TResult Function(UpdateProfileErrorState<T> value)
        updatePofileErrorState,
  }) {
    return updateProfileLoadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_profileInitialState<T> value)? profileInitialState,
    TResult? Function(GetProfileLoadingState<T> value)? getProfileLoadingState,
    TResult? Function(GetPofileSuccessState<T> value)? getPofileSuccessState,
    TResult? Function(GetProfileErrorState<T> value)? getPofileErrorState,
    TResult? Function(UpdateProfileLoadingState<T> value)?
        updateProfileLoadingState,
    TResult? Function(UpdatePofileSuccessState<T> value)?
        updatePofileSuccessState,
    TResult? Function(UpdateProfileErrorState<T> value)? updatePofileErrorState,
  }) {
    return updateProfileLoadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_profileInitialState<T> value)? profileInitialState,
    TResult Function(GetProfileLoadingState<T> value)? getProfileLoadingState,
    TResult Function(GetPofileSuccessState<T> value)? getPofileSuccessState,
    TResult Function(GetProfileErrorState<T> value)? getPofileErrorState,
    TResult Function(UpdateProfileLoadingState<T> value)?
        updateProfileLoadingState,
    TResult Function(UpdatePofileSuccessState<T> value)?
        updatePofileSuccessState,
    TResult Function(UpdateProfileErrorState<T> value)? updatePofileErrorState,
    required TResult orElse(),
  }) {
    if (updateProfileLoadingState != null) {
      return updateProfileLoadingState(this);
    }
    return orElse();
  }
}

abstract class UpdateProfileLoadingState<T> implements ProfileStates<T> {
  const factory UpdateProfileLoadingState() =
      _$UpdateProfileLoadingStateImpl<T>;
}

/// @nodoc
abstract class _$$UpdatePofileSuccessStateImplCopyWith<T, $Res> {
  factory _$$UpdatePofileSuccessStateImplCopyWith(
          _$UpdatePofileSuccessStateImpl<T> value,
          $Res Function(_$UpdatePofileSuccessStateImpl<T>) then) =
      __$$UpdatePofileSuccessStateImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({UpdateProfileResponseBody updateProfileResponseBody});
}

/// @nodoc
class __$$UpdatePofileSuccessStateImplCopyWithImpl<T, $Res>
    extends _$ProfileStatesCopyWithImpl<T, $Res,
        _$UpdatePofileSuccessStateImpl<T>>
    implements _$$UpdatePofileSuccessStateImplCopyWith<T, $Res> {
  __$$UpdatePofileSuccessStateImplCopyWithImpl(
      _$UpdatePofileSuccessStateImpl<T> _value,
      $Res Function(_$UpdatePofileSuccessStateImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ProfileStates
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updateProfileResponseBody = null,
  }) {
    return _then(_$UpdatePofileSuccessStateImpl<T>(
      null == updateProfileResponseBody
          ? _value.updateProfileResponseBody
          : updateProfileResponseBody // ignore: cast_nullable_to_non_nullable
              as UpdateProfileResponseBody,
    ));
  }
}

/// @nodoc

class _$UpdatePofileSuccessStateImpl<T>
    with DiagnosticableTreeMixin
    implements UpdatePofileSuccessState<T> {
  const _$UpdatePofileSuccessStateImpl(this.updateProfileResponseBody);

  @override
  final UpdateProfileResponseBody updateProfileResponseBody;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileStates<$T>.updatePofileSuccessState(updateProfileResponseBody: $updateProfileResponseBody)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ProfileStates<$T>.updatePofileSuccessState'))
      ..add(DiagnosticsProperty(
          'updateProfileResponseBody', updateProfileResponseBody));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePofileSuccessStateImpl<T> &&
            (identical(other.updateProfileResponseBody,
                    updateProfileResponseBody) ||
                other.updateProfileResponseBody == updateProfileResponseBody));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updateProfileResponseBody);

  /// Create a copy of ProfileStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePofileSuccessStateImplCopyWith<T, _$UpdatePofileSuccessStateImpl<T>>
      get copyWith => __$$UpdatePofileSuccessStateImplCopyWithImpl<T,
          _$UpdatePofileSuccessStateImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() profileInitialState,
    required TResult Function() getProfileLoadingState,
    required TResult Function(UserDataModel usermodel) getPofileSuccessState,
    required TResult Function(ApiErrorModel errorModel) getPofileErrorState,
    required TResult Function() updateProfileLoadingState,
    required TResult Function(
            UpdateProfileResponseBody updateProfileResponseBody)
        updatePofileSuccessState,
    required TResult Function(ApiErrorModel errorModel) updatePofileErrorState,
  }) {
    return updatePofileSuccessState(updateProfileResponseBody);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? profileInitialState,
    TResult? Function()? getProfileLoadingState,
    TResult? Function(UserDataModel usermodel)? getPofileSuccessState,
    TResult? Function(ApiErrorModel errorModel)? getPofileErrorState,
    TResult? Function()? updateProfileLoadingState,
    TResult? Function(UpdateProfileResponseBody updateProfileResponseBody)?
        updatePofileSuccessState,
    TResult? Function(ApiErrorModel errorModel)? updatePofileErrorState,
  }) {
    return updatePofileSuccessState?.call(updateProfileResponseBody);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? profileInitialState,
    TResult Function()? getProfileLoadingState,
    TResult Function(UserDataModel usermodel)? getPofileSuccessState,
    TResult Function(ApiErrorModel errorModel)? getPofileErrorState,
    TResult Function()? updateProfileLoadingState,
    TResult Function(UpdateProfileResponseBody updateProfileResponseBody)?
        updatePofileSuccessState,
    TResult Function(ApiErrorModel errorModel)? updatePofileErrorState,
    required TResult orElse(),
  }) {
    if (updatePofileSuccessState != null) {
      return updatePofileSuccessState(updateProfileResponseBody);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_profileInitialState<T> value)
        profileInitialState,
    required TResult Function(GetProfileLoadingState<T> value)
        getProfileLoadingState,
    required TResult Function(GetPofileSuccessState<T> value)
        getPofileSuccessState,
    required TResult Function(GetProfileErrorState<T> value)
        getPofileErrorState,
    required TResult Function(UpdateProfileLoadingState<T> value)
        updateProfileLoadingState,
    required TResult Function(UpdatePofileSuccessState<T> value)
        updatePofileSuccessState,
    required TResult Function(UpdateProfileErrorState<T> value)
        updatePofileErrorState,
  }) {
    return updatePofileSuccessState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_profileInitialState<T> value)? profileInitialState,
    TResult? Function(GetProfileLoadingState<T> value)? getProfileLoadingState,
    TResult? Function(GetPofileSuccessState<T> value)? getPofileSuccessState,
    TResult? Function(GetProfileErrorState<T> value)? getPofileErrorState,
    TResult? Function(UpdateProfileLoadingState<T> value)?
        updateProfileLoadingState,
    TResult? Function(UpdatePofileSuccessState<T> value)?
        updatePofileSuccessState,
    TResult? Function(UpdateProfileErrorState<T> value)? updatePofileErrorState,
  }) {
    return updatePofileSuccessState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_profileInitialState<T> value)? profileInitialState,
    TResult Function(GetProfileLoadingState<T> value)? getProfileLoadingState,
    TResult Function(GetPofileSuccessState<T> value)? getPofileSuccessState,
    TResult Function(GetProfileErrorState<T> value)? getPofileErrorState,
    TResult Function(UpdateProfileLoadingState<T> value)?
        updateProfileLoadingState,
    TResult Function(UpdatePofileSuccessState<T> value)?
        updatePofileSuccessState,
    TResult Function(UpdateProfileErrorState<T> value)? updatePofileErrorState,
    required TResult orElse(),
  }) {
    if (updatePofileSuccessState != null) {
      return updatePofileSuccessState(this);
    }
    return orElse();
  }
}

abstract class UpdatePofileSuccessState<T> implements ProfileStates<T> {
  const factory UpdatePofileSuccessState(
          final UpdateProfileResponseBody updateProfileResponseBody) =
      _$UpdatePofileSuccessStateImpl<T>;

  UpdateProfileResponseBody get updateProfileResponseBody;

  /// Create a copy of ProfileStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatePofileSuccessStateImplCopyWith<T, _$UpdatePofileSuccessStateImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateProfileErrorStateImplCopyWith<T, $Res> {
  factory _$$UpdateProfileErrorStateImplCopyWith(
          _$UpdateProfileErrorStateImpl<T> value,
          $Res Function(_$UpdateProfileErrorStateImpl<T>) then) =
      __$$UpdateProfileErrorStateImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ApiErrorModel errorModel});
}

/// @nodoc
class __$$UpdateProfileErrorStateImplCopyWithImpl<T, $Res>
    extends _$ProfileStatesCopyWithImpl<T, $Res,
        _$UpdateProfileErrorStateImpl<T>>
    implements _$$UpdateProfileErrorStateImplCopyWith<T, $Res> {
  __$$UpdateProfileErrorStateImplCopyWithImpl(
      _$UpdateProfileErrorStateImpl<T> _value,
      $Res Function(_$UpdateProfileErrorStateImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ProfileStates
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorModel = null,
  }) {
    return _then(_$UpdateProfileErrorStateImpl<T>(
      null == errorModel
          ? _value.errorModel
          : errorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$UpdateProfileErrorStateImpl<T>
    with DiagnosticableTreeMixin
    implements UpdateProfileErrorState<T> {
  const _$UpdateProfileErrorStateImpl(this.errorModel);

  @override
  final ApiErrorModel errorModel;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileStates<$T>.updatePofileErrorState(errorModel: $errorModel)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ProfileStates<$T>.updatePofileErrorState'))
      ..add(DiagnosticsProperty('errorModel', errorModel));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileErrorStateImpl<T> &&
            (identical(other.errorModel, errorModel) ||
                other.errorModel == errorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorModel);

  /// Create a copy of ProfileStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfileErrorStateImplCopyWith<T, _$UpdateProfileErrorStateImpl<T>>
      get copyWith => __$$UpdateProfileErrorStateImplCopyWithImpl<T,
          _$UpdateProfileErrorStateImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() profileInitialState,
    required TResult Function() getProfileLoadingState,
    required TResult Function(UserDataModel usermodel) getPofileSuccessState,
    required TResult Function(ApiErrorModel errorModel) getPofileErrorState,
    required TResult Function() updateProfileLoadingState,
    required TResult Function(
            UpdateProfileResponseBody updateProfileResponseBody)
        updatePofileSuccessState,
    required TResult Function(ApiErrorModel errorModel) updatePofileErrorState,
  }) {
    return updatePofileErrorState(errorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? profileInitialState,
    TResult? Function()? getProfileLoadingState,
    TResult? Function(UserDataModel usermodel)? getPofileSuccessState,
    TResult? Function(ApiErrorModel errorModel)? getPofileErrorState,
    TResult? Function()? updateProfileLoadingState,
    TResult? Function(UpdateProfileResponseBody updateProfileResponseBody)?
        updatePofileSuccessState,
    TResult? Function(ApiErrorModel errorModel)? updatePofileErrorState,
  }) {
    return updatePofileErrorState?.call(errorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? profileInitialState,
    TResult Function()? getProfileLoadingState,
    TResult Function(UserDataModel usermodel)? getPofileSuccessState,
    TResult Function(ApiErrorModel errorModel)? getPofileErrorState,
    TResult Function()? updateProfileLoadingState,
    TResult Function(UpdateProfileResponseBody updateProfileResponseBody)?
        updatePofileSuccessState,
    TResult Function(ApiErrorModel errorModel)? updatePofileErrorState,
    required TResult orElse(),
  }) {
    if (updatePofileErrorState != null) {
      return updatePofileErrorState(errorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_profileInitialState<T> value)
        profileInitialState,
    required TResult Function(GetProfileLoadingState<T> value)
        getProfileLoadingState,
    required TResult Function(GetPofileSuccessState<T> value)
        getPofileSuccessState,
    required TResult Function(GetProfileErrorState<T> value)
        getPofileErrorState,
    required TResult Function(UpdateProfileLoadingState<T> value)
        updateProfileLoadingState,
    required TResult Function(UpdatePofileSuccessState<T> value)
        updatePofileSuccessState,
    required TResult Function(UpdateProfileErrorState<T> value)
        updatePofileErrorState,
  }) {
    return updatePofileErrorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_profileInitialState<T> value)? profileInitialState,
    TResult? Function(GetProfileLoadingState<T> value)? getProfileLoadingState,
    TResult? Function(GetPofileSuccessState<T> value)? getPofileSuccessState,
    TResult? Function(GetProfileErrorState<T> value)? getPofileErrorState,
    TResult? Function(UpdateProfileLoadingState<T> value)?
        updateProfileLoadingState,
    TResult? Function(UpdatePofileSuccessState<T> value)?
        updatePofileSuccessState,
    TResult? Function(UpdateProfileErrorState<T> value)? updatePofileErrorState,
  }) {
    return updatePofileErrorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_profileInitialState<T> value)? profileInitialState,
    TResult Function(GetProfileLoadingState<T> value)? getProfileLoadingState,
    TResult Function(GetPofileSuccessState<T> value)? getPofileSuccessState,
    TResult Function(GetProfileErrorState<T> value)? getPofileErrorState,
    TResult Function(UpdateProfileLoadingState<T> value)?
        updateProfileLoadingState,
    TResult Function(UpdatePofileSuccessState<T> value)?
        updatePofileSuccessState,
    TResult Function(UpdateProfileErrorState<T> value)? updatePofileErrorState,
    required TResult orElse(),
  }) {
    if (updatePofileErrorState != null) {
      return updatePofileErrorState(this);
    }
    return orElse();
  }
}

abstract class UpdateProfileErrorState<T> implements ProfileStates<T> {
  const factory UpdateProfileErrorState(final ApiErrorModel errorModel) =
      _$UpdateProfileErrorStateImpl<T>;

  ApiErrorModel get errorModel;

  /// Create a copy of ProfileStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateProfileErrorStateImplCopyWith<T, _$UpdateProfileErrorStateImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
