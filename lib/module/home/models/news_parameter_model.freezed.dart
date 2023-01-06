// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_parameter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsParameterModel _$NewsParameterModelFromJson(Map<String, dynamic> json) {
  return _NewsParameterModel.fromJson(json);
}

/// @nodoc
mixin _$NewsParameterModel {
  String get country => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String get q => throw _privateConstructorUsedError;
  String get sortBy => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  String get sources => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsParameterModelCopyWith<NewsParameterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsParameterModelCopyWith<$Res> {
  factory $NewsParameterModelCopyWith(
          NewsParameterModel value, $Res Function(NewsParameterModel) then) =
      _$NewsParameterModelCopyWithImpl<$Res, NewsParameterModel>;
  @useResult
  $Res call(
      {String country,
      String language,
      String q,
      String sortBy,
      int pageSize,
      String sources});
}

/// @nodoc
class _$NewsParameterModelCopyWithImpl<$Res, $Val extends NewsParameterModel>
    implements $NewsParameterModelCopyWith<$Res> {
  _$NewsParameterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? language = null,
    Object? q = null,
    Object? sortBy = null,
    Object? pageSize = null,
    Object? sources = null,
  }) {
    return _then(_value.copyWith(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      q: null == q
          ? _value.q
          : q // ignore: cast_nullable_to_non_nullable
              as String,
      sortBy: null == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      sources: null == sources
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewsParameterModelCopyWith<$Res>
    implements $NewsParameterModelCopyWith<$Res> {
  factory _$$_NewsParameterModelCopyWith(_$_NewsParameterModel value,
          $Res Function(_$_NewsParameterModel) then) =
      __$$_NewsParameterModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String country,
      String language,
      String q,
      String sortBy,
      int pageSize,
      String sources});
}

/// @nodoc
class __$$_NewsParameterModelCopyWithImpl<$Res>
    extends _$NewsParameterModelCopyWithImpl<$Res, _$_NewsParameterModel>
    implements _$$_NewsParameterModelCopyWith<$Res> {
  __$$_NewsParameterModelCopyWithImpl(
      _$_NewsParameterModel _value, $Res Function(_$_NewsParameterModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? language = null,
    Object? q = null,
    Object? sortBy = null,
    Object? pageSize = null,
    Object? sources = null,
  }) {
    return _then(_$_NewsParameterModel(
      null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      null == q
          ? _value.q
          : q // ignore: cast_nullable_to_non_nullable
              as String,
      null == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String,
      null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      null == sources
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsParameterModel implements _NewsParameterModel {
  const _$_NewsParameterModel(this.country, this.language, this.q, this.sortBy,
      this.pageSize, this.sources);

  factory _$_NewsParameterModel.fromJson(Map<String, dynamic> json) =>
      _$$_NewsParameterModelFromJson(json);

  @override
  final String country;
  @override
  final String language;
  @override
  final String q;
  @override
  final String sortBy;
  @override
  final int pageSize;
  @override
  final String sources;

  @override
  String toString() {
    return 'NewsParameterModel(country: $country, language: $language, q: $q, sortBy: $sortBy, pageSize: $pageSize, sources: $sources)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsParameterModel &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.q, q) || other.q == q) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.sources, sources) || other.sources == sources));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, country, language, q, sortBy, pageSize, sources);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsParameterModelCopyWith<_$_NewsParameterModel> get copyWith =>
      __$$_NewsParameterModelCopyWithImpl<_$_NewsParameterModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsParameterModelToJson(
      this,
    );
  }
}

abstract class _NewsParameterModel implements NewsParameterModel {
  const factory _NewsParameterModel(
      final String country,
      final String language,
      final String q,
      final String sortBy,
      final int pageSize,
      final String sources) = _$_NewsParameterModel;

  factory _NewsParameterModel.fromJson(Map<String, dynamic> json) =
      _$_NewsParameterModel.fromJson;

  @override
  String get country;
  @override
  String get language;
  @override
  String get q;
  @override
  String get sortBy;
  @override
  int get pageSize;
  @override
  String get sources;
  @override
  @JsonKey(ignore: true)
  _$$_NewsParameterModelCopyWith<_$_NewsParameterModel> get copyWith =>
      throw _privateConstructorUsedError;
}
