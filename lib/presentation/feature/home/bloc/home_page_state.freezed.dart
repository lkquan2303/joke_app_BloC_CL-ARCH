// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomepageState {
  Categories get categoriesResponse => throw _privateConstructorUsedError;
  HomepagePageStatus get status => throw _privateConstructorUsedError;
  String? get joke => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomepageStateCopyWith<HomepageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomepageStateCopyWith<$Res> {
  factory $HomepageStateCopyWith(
          HomepageState value, $Res Function(HomepageState) then) =
      _$HomepageStateCopyWithImpl<$Res, HomepageState>;
  @useResult
  $Res call(
      {Categories categoriesResponse,
      HomepagePageStatus status,
      String? joke,
      Object? error});

  $CategoriesCopyWith<$Res> get categoriesResponse;
}

/// @nodoc
class _$HomepageStateCopyWithImpl<$Res, $Val extends HomepageState>
    implements $HomepageStateCopyWith<$Res> {
  _$HomepageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoriesResponse = null,
    Object? status = null,
    Object? joke = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      categoriesResponse: null == categoriesResponse
          ? _value.categoriesResponse
          : categoriesResponse // ignore: cast_nullable_to_non_nullable
              as Categories,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomepagePageStatus,
      joke: freezed == joke
          ? _value.joke
          : joke // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error ? _value.error : error,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoriesCopyWith<$Res> get categoriesResponse {
    return $CategoriesCopyWith<$Res>(_value.categoriesResponse, (value) {
      return _then(_value.copyWith(categoriesResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HomepageStateCopyWith<$Res>
    implements $HomepageStateCopyWith<$Res> {
  factory _$$_HomepageStateCopyWith(
          _$_HomepageState value, $Res Function(_$_HomepageState) then) =
      __$$_HomepageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Categories categoriesResponse,
      HomepagePageStatus status,
      String? joke,
      Object? error});

  @override
  $CategoriesCopyWith<$Res> get categoriesResponse;
}

/// @nodoc
class __$$_HomepageStateCopyWithImpl<$Res>
    extends _$HomepageStateCopyWithImpl<$Res, _$_HomepageState>
    implements _$$_HomepageStateCopyWith<$Res> {
  __$$_HomepageStateCopyWithImpl(
      _$_HomepageState _value, $Res Function(_$_HomepageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoriesResponse = null,
    Object? status = null,
    Object? joke = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_HomepageState(
      categoriesResponse: null == categoriesResponse
          ? _value.categoriesResponse
          : categoriesResponse // ignore: cast_nullable_to_non_nullable
              as Categories,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomepagePageStatus,
      joke: freezed == joke
          ? _value.joke
          : joke // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_HomepageState extends _HomepageState {
  _$_HomepageState(
      {required this.categoriesResponse,
      required this.status,
      this.joke,
      this.error})
      : super._();

  @override
  final Categories categoriesResponse;
  @override
  final HomepagePageStatus status;
  @override
  final String? joke;
  @override
  final Object? error;

  @override
  String toString() {
    return 'HomepageState(categoriesResponse: $categoriesResponse, status: $status, joke: $joke, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomepageState &&
            (identical(other.categoriesResponse, categoriesResponse) ||
                other.categoriesResponse == categoriesResponse) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.joke, joke) || other.joke == joke) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoriesResponse, status, joke,
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomepageStateCopyWith<_$_HomepageState> get copyWith =>
      __$$_HomepageStateCopyWithImpl<_$_HomepageState>(this, _$identity);
}

abstract class _HomepageState extends HomepageState {
  factory _HomepageState(
      {required final Categories categoriesResponse,
      required final HomepagePageStatus status,
      final String? joke,
      final Object? error}) = _$_HomepageState;
  _HomepageState._() : super._();

  @override
  Categories get categoriesResponse;
  @override
  HomepagePageStatus get status;
  @override
  String? get joke;
  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$_HomepageStateCopyWith<_$_HomepageState> get copyWith =>
      throw _privateConstructorUsedError;
}
