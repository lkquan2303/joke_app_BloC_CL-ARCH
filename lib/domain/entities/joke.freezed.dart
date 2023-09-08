// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'joke.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Joke {
  List<String>? get categories => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  String? get blacklistFlags => throw _privateConstructorUsedError;
  String? get contains => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JokeCopyWith<Joke> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JokeCopyWith<$Res> {
  factory $JokeCopyWith(Joke value, $Res Function(Joke) then) =
      _$JokeCopyWithImpl<$Res, Joke>;
  @useResult
  $Res call(
      {List<String>? categories,
      String? language,
      String? blacklistFlags,
      String? contains});
}

/// @nodoc
class _$JokeCopyWithImpl<$Res, $Val extends Joke>
    implements $JokeCopyWith<$Res> {
  _$JokeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = freezed,
    Object? language = freezed,
    Object? blacklistFlags = freezed,
    Object? contains = freezed,
  }) {
    return _then(_value.copyWith(
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      blacklistFlags: freezed == blacklistFlags
          ? _value.blacklistFlags
          : blacklistFlags // ignore: cast_nullable_to_non_nullable
              as String?,
      contains: freezed == contains
          ? _value.contains
          : contains // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_JokeCopyWith<$Res> implements $JokeCopyWith<$Res> {
  factory _$$_JokeCopyWith(_$_Joke value, $Res Function(_$_Joke) then) =
      __$$_JokeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String>? categories,
      String? language,
      String? blacklistFlags,
      String? contains});
}

/// @nodoc
class __$$_JokeCopyWithImpl<$Res> extends _$JokeCopyWithImpl<$Res, _$_Joke>
    implements _$$_JokeCopyWith<$Res> {
  __$$_JokeCopyWithImpl(_$_Joke _value, $Res Function(_$_Joke) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = freezed,
    Object? language = freezed,
    Object? blacklistFlags = freezed,
    Object? contains = freezed,
  }) {
    return _then(_$_Joke(
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      blacklistFlags: freezed == blacklistFlags
          ? _value.blacklistFlags
          : blacklistFlags // ignore: cast_nullable_to_non_nullable
              as String?,
      contains: freezed == contains
          ? _value.contains
          : contains // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Joke extends _Joke {
  _$_Joke(
      {final List<String>? categories,
      this.language,
      this.blacklistFlags,
      this.contains})
      : _categories = categories,
        super._();

  final List<String>? _categories;
  @override
  List<String>? get categories {
    final value = _categories;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? language;
  @override
  final String? blacklistFlags;
  @override
  final String? contains;

  @override
  String toString() {
    return 'Joke(categories: $categories, language: $language, blacklistFlags: $blacklistFlags, contains: $contains)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Joke &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.blacklistFlags, blacklistFlags) ||
                other.blacklistFlags == blacklistFlags) &&
            (identical(other.contains, contains) ||
                other.contains == contains));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categories),
      language,
      blacklistFlags,
      contains);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JokeCopyWith<_$_Joke> get copyWith =>
      __$$_JokeCopyWithImpl<_$_Joke>(this, _$identity);
}

abstract class _Joke extends Joke {
  factory _Joke(
      {final List<String>? categories,
      final String? language,
      final String? blacklistFlags,
      final String? contains}) = _$_Joke;
  _Joke._() : super._();

  @override
  List<String>? get categories;
  @override
  String? get language;
  @override
  String? get blacklistFlags;
  @override
  String? get contains;
  @override
  @JsonKey(ignore: true)
  _$$_JokeCopyWith<_$_Joke> get copyWith => throw _privateConstructorUsedError;
}
