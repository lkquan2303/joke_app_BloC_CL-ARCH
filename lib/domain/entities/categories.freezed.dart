// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'categories.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Categories {
  List<String>? get musicCategories => throw _privateConstructorUsedError;
  List<String>? get blacklistCategories => throw _privateConstructorUsedError;
  String? get searchText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoriesCopyWith<Categories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesCopyWith<$Res> {
  factory $CategoriesCopyWith(
          Categories value, $Res Function(Categories) then) =
      _$CategoriesCopyWithImpl<$Res, Categories>;
  @useResult
  $Res call(
      {List<String>? musicCategories,
      List<String>? blacklistCategories,
      String? searchText});
}

/// @nodoc
class _$CategoriesCopyWithImpl<$Res, $Val extends Categories>
    implements $CategoriesCopyWith<$Res> {
  _$CategoriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? musicCategories = freezed,
    Object? blacklistCategories = freezed,
    Object? searchText = freezed,
  }) {
    return _then(_value.copyWith(
      musicCategories: freezed == musicCategories
          ? _value.musicCategories
          : musicCategories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      blacklistCategories: freezed == blacklistCategories
          ? _value.blacklistCategories
          : blacklistCategories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      searchText: freezed == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoriesCopyWith<$Res>
    implements $CategoriesCopyWith<$Res> {
  factory _$$_CategoriesCopyWith(
          _$_Categories value, $Res Function(_$_Categories) then) =
      __$$_CategoriesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String>? musicCategories,
      List<String>? blacklistCategories,
      String? searchText});
}

/// @nodoc
class __$$_CategoriesCopyWithImpl<$Res>
    extends _$CategoriesCopyWithImpl<$Res, _$_Categories>
    implements _$$_CategoriesCopyWith<$Res> {
  __$$_CategoriesCopyWithImpl(
      _$_Categories _value, $Res Function(_$_Categories) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? musicCategories = freezed,
    Object? blacklistCategories = freezed,
    Object? searchText = freezed,
  }) {
    return _then(_$_Categories(
      musicCategories: freezed == musicCategories
          ? _value._musicCategories
          : musicCategories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      blacklistCategories: freezed == blacklistCategories
          ? _value._blacklistCategories
          : blacklistCategories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      searchText: freezed == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Categories extends _Categories {
  _$_Categories(
      {required final List<String>? musicCategories,
      required final List<String>? blacklistCategories,
      required this.searchText})
      : _musicCategories = musicCategories,
        _blacklistCategories = blacklistCategories,
        super._();

  final List<String>? _musicCategories;
  @override
  List<String>? get musicCategories {
    final value = _musicCategories;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _blacklistCategories;
  @override
  List<String>? get blacklistCategories {
    final value = _blacklistCategories;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? searchText;

  @override
  String toString() {
    return 'Categories(musicCategories: $musicCategories, blacklistCategories: $blacklistCategories, searchText: $searchText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Categories &&
            const DeepCollectionEquality()
                .equals(other._musicCategories, _musicCategories) &&
            const DeepCollectionEquality()
                .equals(other._blacklistCategories, _blacklistCategories) &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_musicCategories),
      const DeepCollectionEquality().hash(_blacklistCategories),
      searchText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoriesCopyWith<_$_Categories> get copyWith =>
      __$$_CategoriesCopyWithImpl<_$_Categories>(this, _$identity);
}

abstract class _Categories extends Categories {
  factory _Categories(
      {required final List<String>? musicCategories,
      required final List<String>? blacklistCategories,
      required final String? searchText}) = _$_Categories;
  _Categories._() : super._();

  @override
  List<String>? get musicCategories;
  @override
  List<String>? get blacklistCategories;
  @override
  String? get searchText;
  @override
  @JsonKey(ignore: true)
  _$$_CategoriesCopyWith<_$_Categories> get copyWith =>
      throw _privateConstructorUsedError;
}
