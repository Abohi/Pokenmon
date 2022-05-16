// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pokenmon_results_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokenmonResultModel _$PokenmonResultModelFromJson(Map<String, dynamic> json) {
  return _PokenmonResultModel.fromJson(json);
}

/// @nodoc
class _$PokenmonResultModelTearOff {
  const _$PokenmonResultModelTearOff();

  _PokenmonResultModel call({required String name}) {
    return _PokenmonResultModel(
      name: name,
    );
  }

  PokenmonResultModel fromJson(Map<String, Object> json) {
    return PokenmonResultModel.fromJson(json);
  }
}

/// @nodoc
const $PokenmonResultModel = _$PokenmonResultModelTearOff();

/// @nodoc
mixin _$PokenmonResultModel {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokenmonResultModelCopyWith<PokenmonResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokenmonResultModelCopyWith<$Res> {
  factory $PokenmonResultModelCopyWith(
          PokenmonResultModel value, $Res Function(PokenmonResultModel) then) =
      _$PokenmonResultModelCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$PokenmonResultModelCopyWithImpl<$Res>
    implements $PokenmonResultModelCopyWith<$Res> {
  _$PokenmonResultModelCopyWithImpl(this._value, this._then);

  final PokenmonResultModel _value;
  // ignore: unused_field
  final $Res Function(PokenmonResultModel) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PokenmonResultModelCopyWith<$Res>
    implements $PokenmonResultModelCopyWith<$Res> {
  factory _$PokenmonResultModelCopyWith(_PokenmonResultModel value,
          $Res Function(_PokenmonResultModel) then) =
      __$PokenmonResultModelCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$PokenmonResultModelCopyWithImpl<$Res>
    extends _$PokenmonResultModelCopyWithImpl<$Res>
    implements _$PokenmonResultModelCopyWith<$Res> {
  __$PokenmonResultModelCopyWithImpl(
      _PokenmonResultModel _value, $Res Function(_PokenmonResultModel) _then)
      : super(_value, (v) => _then(v as _PokenmonResultModel));

  @override
  _PokenmonResultModel get _value => super._value as _PokenmonResultModel;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_PokenmonResultModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokenmonResultModel implements _PokenmonResultModel {
  const _$_PokenmonResultModel({required this.name});

  factory _$_PokenmonResultModel.fromJson(Map<String, dynamic> json) =>
      _$$_PokenmonResultModelFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'PokenmonResultModel(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PokenmonResultModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$PokenmonResultModelCopyWith<_PokenmonResultModel> get copyWith =>
      __$PokenmonResultModelCopyWithImpl<_PokenmonResultModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokenmonResultModelToJson(this);
  }
}

abstract class _PokenmonResultModel implements PokenmonResultModel {
  const factory _PokenmonResultModel({required String name}) =
      _$_PokenmonResultModel;

  factory _PokenmonResultModel.fromJson(Map<String, dynamic> json) =
      _$_PokenmonResultModel.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PokenmonResultModelCopyWith<_PokenmonResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}
