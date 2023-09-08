// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'joke_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$JokeResponse {
  bool? get error => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get joke => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JokeResponseCopyWith<JokeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JokeResponseCopyWith<$Res> {
  factory $JokeResponseCopyWith(
          JokeResponse value, $Res Function(JokeResponse) then) =
      _$JokeResponseCopyWithImpl<$Res, JokeResponse>;
  @useResult
  $Res call({bool? error, String? message, String? joke});
}

/// @nodoc
class _$JokeResponseCopyWithImpl<$Res, $Val extends JokeResponse>
    implements $JokeResponseCopyWith<$Res> {
  _$JokeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? message = freezed,
    Object? joke = freezed,
  }) {
    return _then(_value.copyWith(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      joke: freezed == joke
          ? _value.joke
          : joke // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_JokeResponseCopyWith<$Res>
    implements $JokeResponseCopyWith<$Res> {
  factory _$$_JokeResponseCopyWith(
          _$_JokeResponse value, $Res Function(_$_JokeResponse) then) =
      __$$_JokeResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? error, String? message, String? joke});
}

/// @nodoc
class __$$_JokeResponseCopyWithImpl<$Res>
    extends _$JokeResponseCopyWithImpl<$Res, _$_JokeResponse>
    implements _$$_JokeResponseCopyWith<$Res> {
  __$$_JokeResponseCopyWithImpl(
      _$_JokeResponse _value, $Res Function(_$_JokeResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? message = freezed,
    Object? joke = freezed,
  }) {
    return _then(_$_JokeResponse(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      joke: freezed == joke
          ? _value.joke
          : joke // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_JokeResponse extends _JokeResponse {
  _$_JokeResponse(
      {required this.error, required this.message, required this.joke})
      : super._();

  @override
  final bool? error;
  @override
  final String? message;
  @override
  final String? joke;

  @override
  String toString() {
    return 'JokeResponse(error: $error, message: $message, joke: $joke)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JokeResponse &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.joke, joke) || other.joke == joke));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, message, joke);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JokeResponseCopyWith<_$_JokeResponse> get copyWith =>
      __$$_JokeResponseCopyWithImpl<_$_JokeResponse>(this, _$identity);
}

abstract class _JokeResponse extends JokeResponse {
  factory _JokeResponse(
      {required final bool? error,
      required final String? message,
      required final String? joke}) = _$_JokeResponse;
  _JokeResponse._() : super._();

  @override
  bool? get error;
  @override
  String? get message;
  @override
  String? get joke;
  @override
  @JsonKey(ignore: true)
  _$$_JokeResponseCopyWith<_$_JokeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
