// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pokenmon_names_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokenmonNamesModel _$PokenmonNamesModelFromJson(Map<String, dynamic> json) {
  return _PokenmonNamesModel.fromJson(json);
}

/// @nodoc
class _$PokenmonNamesModelTearOff {
  const _$PokenmonNamesModelTearOff();

  _PokenmonNamesModel call(
      {required num count, required List<PokenmonResultModel> results}) {
    return _PokenmonNamesModel(
      count: count,
      results: results,
    );
  }

  PokenmonNamesModel fromJson(Map<String, Object> json) {
    return PokenmonNamesModel.fromJson(json);
  }
}

/// @nodoc
const $PokenmonNamesModel = _$PokenmonNamesModelTearOff();

/// @nodoc
mixin _$PokenmonNamesModel {
  num get count => throw _privateConstructorUsedError;
  List<PokenmonResultModel> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokenmonNamesModelCopyWith<PokenmonNamesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokenmonNamesModelCopyWith<$Res> {
  factory $PokenmonNamesModelCopyWith(
          PokenmonNamesModel value, $Res Function(PokenmonNamesModel) then) =
      _$PokenmonNamesModelCopyWithImpl<$Res>;
  $Res call({num count, List<PokenmonResultModel> results});
}

/// @nodoc
class _$PokenmonNamesModelCopyWithImpl<$Res>
    implements $PokenmonNamesModelCopyWith<$Res> {
  _$PokenmonNamesModelCopyWithImpl(this._value, this._then);

  final PokenmonNamesModel _value;
  // ignore: unused_field
  final $Res Function(PokenmonNamesModel) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as num,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PokenmonResultModel>,
    ));
  }
}

/// @nodoc
abstract class _$PokenmonNamesModelCopyWith<$Res>
    implements $PokenmonNamesModelCopyWith<$Res> {
  factory _$PokenmonNamesModelCopyWith(
          _PokenmonNamesModel value, $Res Function(_PokenmonNamesModel) then) =
      __$PokenmonNamesModelCopyWithImpl<$Res>;
  @override
  $Res call({num count, List<PokenmonResultModel> results});
}

/// @nodoc
class __$PokenmonNamesModelCopyWithImpl<$Res>
    extends _$PokenmonNamesModelCopyWithImpl<$Res>
    implements _$PokenmonNamesModelCopyWith<$Res> {
  __$PokenmonNamesModelCopyWithImpl(
      _PokenmonNamesModel _value, $Res Function(_PokenmonNamesModel) _then)
      : super(_value, (v) => _then(v as _PokenmonNamesModel));

  @override
  _PokenmonNamesModel get _value => super._value as _PokenmonNamesModel;

  @override
  $Res call({
    Object? count = freezed,
    Object? results = freezed,
  }) {
    return _then(_PokenmonNamesModel(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as num,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PokenmonResultModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokenmonNamesModel implements _PokenmonNamesModel {
  const _$_PokenmonNamesModel({required this.count, required this.results});

  factory _$_PokenmonNamesModel.fromJson(Map<String, dynamic> json) =>
      _$$_PokenmonNamesModelFromJson(json);

  @override
  final num count;
  @override
  final List<PokenmonResultModel> results;

  @override
  String toString() {
    return 'PokenmonNamesModel(count: $count, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PokenmonNamesModel &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.results, results) ||
                const DeepCollectionEquality().equals(other.results, results)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(results);

  @JsonKey(ignore: true)
  @override
  _$PokenmonNamesModelCopyWith<_PokenmonNamesModel> get copyWith =>
      __$PokenmonNamesModelCopyWithImpl<_PokenmonNamesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokenmonNamesModelToJson(this);
  }
}

abstract class _PokenmonNamesModel implements PokenmonNamesModel {
  const factory _PokenmonNamesModel(
      {required num count,
      required List<PokenmonResultModel> results}) = _$_PokenmonNamesModel;

  factory _PokenmonNamesModel.fromJson(Map<String, dynamic> json) =
      _$_PokenmonNamesModel.fromJson;

  @override
  num get count => throw _privateConstructorUsedError;
  @override
  List<PokenmonResultModel> get results => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PokenmonNamesModelCopyWith<_PokenmonNamesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
