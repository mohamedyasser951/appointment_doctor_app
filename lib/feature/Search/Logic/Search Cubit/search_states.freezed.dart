// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchStates<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() searchInitialState,
    required TResult Function() searchLoadingState,
    required TResult Function(List<Doctors> data) searchSuccessState,
    required TResult Function(ApiErrorModel apiErrorModel) searchErrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? searchInitialState,
    TResult? Function()? searchLoadingState,
    TResult? Function(List<Doctors> data)? searchSuccessState,
    TResult? Function(ApiErrorModel apiErrorModel)? searchErrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchInitialState,
    TResult Function()? searchLoadingState,
    TResult Function(List<Doctors> data)? searchSuccessState,
    TResult Function(ApiErrorModel apiErrorModel)? searchErrorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchInitial<T> value) searchInitialState,
    required TResult Function(SearchLoading<T> value) searchLoadingState,
    required TResult Function(SearchSuccess<T> value) searchSuccessState,
    required TResult Function(SearchError<T> value) searchErrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchInitial<T> value)? searchInitialState,
    TResult? Function(SearchLoading<T> value)? searchLoadingState,
    TResult? Function(SearchSuccess<T> value)? searchSuccessState,
    TResult? Function(SearchError<T> value)? searchErrorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchInitial<T> value)? searchInitialState,
    TResult Function(SearchLoading<T> value)? searchLoadingState,
    TResult Function(SearchSuccess<T> value)? searchSuccessState,
    TResult Function(SearchError<T> value)? searchErrorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStatesCopyWith<T, $Res> {
  factory $SearchStatesCopyWith(
          SearchStates<T> value, $Res Function(SearchStates<T>) then) =
      _$SearchStatesCopyWithImpl<T, $Res, SearchStates<T>>;
}

/// @nodoc
class _$SearchStatesCopyWithImpl<T, $Res, $Val extends SearchStates<T>>
    implements $SearchStatesCopyWith<T, $Res> {
  _$SearchStatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchStates
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SearchInitialImplCopyWith<T, $Res> {
  factory _$$SearchInitialImplCopyWith(_$SearchInitialImpl<T> value,
          $Res Function(_$SearchInitialImpl<T>) then) =
      __$$SearchInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$SearchInitialImplCopyWithImpl<T, $Res>
    extends _$SearchStatesCopyWithImpl<T, $Res, _$SearchInitialImpl<T>>
    implements _$$SearchInitialImplCopyWith<T, $Res> {
  __$$SearchInitialImplCopyWithImpl(_$SearchInitialImpl<T> _value,
      $Res Function(_$SearchInitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SearchStates
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SearchInitialImpl<T> implements _SearchInitial<T> {
  const _$SearchInitialImpl();

  @override
  String toString() {
    return 'SearchStates<$T>.searchInitialState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() searchInitialState,
    required TResult Function() searchLoadingState,
    required TResult Function(List<Doctors> data) searchSuccessState,
    required TResult Function(ApiErrorModel apiErrorModel) searchErrorState,
  }) {
    return searchInitialState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? searchInitialState,
    TResult? Function()? searchLoadingState,
    TResult? Function(List<Doctors> data)? searchSuccessState,
    TResult? Function(ApiErrorModel apiErrorModel)? searchErrorState,
  }) {
    return searchInitialState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchInitialState,
    TResult Function()? searchLoadingState,
    TResult Function(List<Doctors> data)? searchSuccessState,
    TResult Function(ApiErrorModel apiErrorModel)? searchErrorState,
    required TResult orElse(),
  }) {
    if (searchInitialState != null) {
      return searchInitialState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchInitial<T> value) searchInitialState,
    required TResult Function(SearchLoading<T> value) searchLoadingState,
    required TResult Function(SearchSuccess<T> value) searchSuccessState,
    required TResult Function(SearchError<T> value) searchErrorState,
  }) {
    return searchInitialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchInitial<T> value)? searchInitialState,
    TResult? Function(SearchLoading<T> value)? searchLoadingState,
    TResult? Function(SearchSuccess<T> value)? searchSuccessState,
    TResult? Function(SearchError<T> value)? searchErrorState,
  }) {
    return searchInitialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchInitial<T> value)? searchInitialState,
    TResult Function(SearchLoading<T> value)? searchLoadingState,
    TResult Function(SearchSuccess<T> value)? searchSuccessState,
    TResult Function(SearchError<T> value)? searchErrorState,
    required TResult orElse(),
  }) {
    if (searchInitialState != null) {
      return searchInitialState(this);
    }
    return orElse();
  }
}

abstract class _SearchInitial<T> implements SearchStates<T> {
  const factory _SearchInitial() = _$SearchInitialImpl<T>;
}

/// @nodoc
abstract class _$$SearchLoadingImplCopyWith<T, $Res> {
  factory _$$SearchLoadingImplCopyWith(_$SearchLoadingImpl<T> value,
          $Res Function(_$SearchLoadingImpl<T>) then) =
      __$$SearchLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$SearchLoadingImplCopyWithImpl<T, $Res>
    extends _$SearchStatesCopyWithImpl<T, $Res, _$SearchLoadingImpl<T>>
    implements _$$SearchLoadingImplCopyWith<T, $Res> {
  __$$SearchLoadingImplCopyWithImpl(_$SearchLoadingImpl<T> _value,
      $Res Function(_$SearchLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SearchStates
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SearchLoadingImpl<T> implements SearchLoading<T> {
  const _$SearchLoadingImpl();

  @override
  String toString() {
    return 'SearchStates<$T>.searchLoadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() searchInitialState,
    required TResult Function() searchLoadingState,
    required TResult Function(List<Doctors> data) searchSuccessState,
    required TResult Function(ApiErrorModel apiErrorModel) searchErrorState,
  }) {
    return searchLoadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? searchInitialState,
    TResult? Function()? searchLoadingState,
    TResult? Function(List<Doctors> data)? searchSuccessState,
    TResult? Function(ApiErrorModel apiErrorModel)? searchErrorState,
  }) {
    return searchLoadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchInitialState,
    TResult Function()? searchLoadingState,
    TResult Function(List<Doctors> data)? searchSuccessState,
    TResult Function(ApiErrorModel apiErrorModel)? searchErrorState,
    required TResult orElse(),
  }) {
    if (searchLoadingState != null) {
      return searchLoadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchInitial<T> value) searchInitialState,
    required TResult Function(SearchLoading<T> value) searchLoadingState,
    required TResult Function(SearchSuccess<T> value) searchSuccessState,
    required TResult Function(SearchError<T> value) searchErrorState,
  }) {
    return searchLoadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchInitial<T> value)? searchInitialState,
    TResult? Function(SearchLoading<T> value)? searchLoadingState,
    TResult? Function(SearchSuccess<T> value)? searchSuccessState,
    TResult? Function(SearchError<T> value)? searchErrorState,
  }) {
    return searchLoadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchInitial<T> value)? searchInitialState,
    TResult Function(SearchLoading<T> value)? searchLoadingState,
    TResult Function(SearchSuccess<T> value)? searchSuccessState,
    TResult Function(SearchError<T> value)? searchErrorState,
    required TResult orElse(),
  }) {
    if (searchLoadingState != null) {
      return searchLoadingState(this);
    }
    return orElse();
  }
}

abstract class SearchLoading<T> implements SearchStates<T> {
  const factory SearchLoading() = _$SearchLoadingImpl<T>;
}

/// @nodoc
abstract class _$$SearchSuccessImplCopyWith<T, $Res> {
  factory _$$SearchSuccessImplCopyWith(_$SearchSuccessImpl<T> value,
          $Res Function(_$SearchSuccessImpl<T>) then) =
      __$$SearchSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<Doctors> data});
}

/// @nodoc
class __$$SearchSuccessImplCopyWithImpl<T, $Res>
    extends _$SearchStatesCopyWithImpl<T, $Res, _$SearchSuccessImpl<T>>
    implements _$$SearchSuccessImplCopyWith<T, $Res> {
  __$$SearchSuccessImplCopyWithImpl(_$SearchSuccessImpl<T> _value,
      $Res Function(_$SearchSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SearchStates
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SearchSuccessImpl<T>(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Doctors>,
    ));
  }
}

/// @nodoc

class _$SearchSuccessImpl<T> implements SearchSuccess<T> {
  const _$SearchSuccessImpl(final List<Doctors> data) : _data = data;

  final List<Doctors> _data;
  @override
  List<Doctors> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'SearchStates<$T>.searchSuccessState(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of SearchStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchSuccessImplCopyWith<T, _$SearchSuccessImpl<T>> get copyWith =>
      __$$SearchSuccessImplCopyWithImpl<T, _$SearchSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() searchInitialState,
    required TResult Function() searchLoadingState,
    required TResult Function(List<Doctors> data) searchSuccessState,
    required TResult Function(ApiErrorModel apiErrorModel) searchErrorState,
  }) {
    return searchSuccessState(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? searchInitialState,
    TResult? Function()? searchLoadingState,
    TResult? Function(List<Doctors> data)? searchSuccessState,
    TResult? Function(ApiErrorModel apiErrorModel)? searchErrorState,
  }) {
    return searchSuccessState?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchInitialState,
    TResult Function()? searchLoadingState,
    TResult Function(List<Doctors> data)? searchSuccessState,
    TResult Function(ApiErrorModel apiErrorModel)? searchErrorState,
    required TResult orElse(),
  }) {
    if (searchSuccessState != null) {
      return searchSuccessState(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchInitial<T> value) searchInitialState,
    required TResult Function(SearchLoading<T> value) searchLoadingState,
    required TResult Function(SearchSuccess<T> value) searchSuccessState,
    required TResult Function(SearchError<T> value) searchErrorState,
  }) {
    return searchSuccessState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchInitial<T> value)? searchInitialState,
    TResult? Function(SearchLoading<T> value)? searchLoadingState,
    TResult? Function(SearchSuccess<T> value)? searchSuccessState,
    TResult? Function(SearchError<T> value)? searchErrorState,
  }) {
    return searchSuccessState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchInitial<T> value)? searchInitialState,
    TResult Function(SearchLoading<T> value)? searchLoadingState,
    TResult Function(SearchSuccess<T> value)? searchSuccessState,
    TResult Function(SearchError<T> value)? searchErrorState,
    required TResult orElse(),
  }) {
    if (searchSuccessState != null) {
      return searchSuccessState(this);
    }
    return orElse();
  }
}

abstract class SearchSuccess<T> implements SearchStates<T> {
  const factory SearchSuccess(final List<Doctors> data) =
      _$SearchSuccessImpl<T>;

  List<Doctors> get data;

  /// Create a copy of SearchStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchSuccessImplCopyWith<T, _$SearchSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchErrorImplCopyWith<T, $Res> {
  factory _$$SearchErrorImplCopyWith(_$SearchErrorImpl<T> value,
          $Res Function(_$SearchErrorImpl<T>) then) =
      __$$SearchErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$SearchErrorImplCopyWithImpl<T, $Res>
    extends _$SearchStatesCopyWithImpl<T, $Res, _$SearchErrorImpl<T>>
    implements _$$SearchErrorImplCopyWith<T, $Res> {
  __$$SearchErrorImplCopyWithImpl(
      _$SearchErrorImpl<T> _value, $Res Function(_$SearchErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SearchStates
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(_$SearchErrorImpl<T>(
      null == apiErrorModel
          ? _value.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$SearchErrorImpl<T> implements SearchError<T> {
  const _$SearchErrorImpl(this.apiErrorModel);

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString() {
    return 'SearchStates<$T>.searchErrorState(apiErrorModel: $apiErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchErrorImpl<T> &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  /// Create a copy of SearchStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchErrorImplCopyWith<T, _$SearchErrorImpl<T>> get copyWith =>
      __$$SearchErrorImplCopyWithImpl<T, _$SearchErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() searchInitialState,
    required TResult Function() searchLoadingState,
    required TResult Function(List<Doctors> data) searchSuccessState,
    required TResult Function(ApiErrorModel apiErrorModel) searchErrorState,
  }) {
    return searchErrorState(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? searchInitialState,
    TResult? Function()? searchLoadingState,
    TResult? Function(List<Doctors> data)? searchSuccessState,
    TResult? Function(ApiErrorModel apiErrorModel)? searchErrorState,
  }) {
    return searchErrorState?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchInitialState,
    TResult Function()? searchLoadingState,
    TResult Function(List<Doctors> data)? searchSuccessState,
    TResult Function(ApiErrorModel apiErrorModel)? searchErrorState,
    required TResult orElse(),
  }) {
    if (searchErrorState != null) {
      return searchErrorState(apiErrorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchInitial<T> value) searchInitialState,
    required TResult Function(SearchLoading<T> value) searchLoadingState,
    required TResult Function(SearchSuccess<T> value) searchSuccessState,
    required TResult Function(SearchError<T> value) searchErrorState,
  }) {
    return searchErrorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchInitial<T> value)? searchInitialState,
    TResult? Function(SearchLoading<T> value)? searchLoadingState,
    TResult? Function(SearchSuccess<T> value)? searchSuccessState,
    TResult? Function(SearchError<T> value)? searchErrorState,
  }) {
    return searchErrorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchInitial<T> value)? searchInitialState,
    TResult Function(SearchLoading<T> value)? searchLoadingState,
    TResult Function(SearchSuccess<T> value)? searchSuccessState,
    TResult Function(SearchError<T> value)? searchErrorState,
    required TResult orElse(),
  }) {
    if (searchErrorState != null) {
      return searchErrorState(this);
    }
    return orElse();
  }
}

abstract class SearchError<T> implements SearchStates<T> {
  const factory SearchError(final ApiErrorModel apiErrorModel) =
      _$SearchErrorImpl<T>;

  ApiErrorModel get apiErrorModel;

  /// Create a copy of SearchStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchErrorImplCopyWith<T, _$SearchErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
