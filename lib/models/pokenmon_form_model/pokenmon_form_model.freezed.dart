// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pokenmon_form_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokenmonFormModel _$PokenmonFormModelFromJson(Map<String, dynamic> json) {
  return _PokenmonFormModel.fromJson(json);
}

/// @nodoc
class _$PokenmonFormModelTearOff {
  const _$PokenmonFormModelTearOff();

  _PokenmonFormModel call({required PokenmonSpriteModel sprites}) {
    return _PokenmonFormModel(
      sprites: sprites,
    );
  }

  PokenmonFormModel fromJson(Map<String, Object> json) {
    return PokenmonFormModel.fromJson(json);
  }
}

/// @nodoc
const $PokenmonFormModel = _$PokenmonFormModelTearOff();

/// @nodoc
mixin _$PokenmonFormModel {
  PokenmonSpriteModel get sprites => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokenmonFormModelCopyWith<PokenmonFormModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokenmonFormModelCopyWith<$Res> {
  factory $PokenmonFormModelCopyWith(
          PokenmonFormModel value, $Res Function(PokenmonFormModel) then) =
      _$PokenmonFormModelCopyWithImpl<$Res>;
  $Res call({PokenmonSpriteModel sprites});

  $PokenmonSpriteModelCopyWith<$Res> get sprites;
}

/// @nodoc
class _$PokenmonFormModelCopyWithImpl<$Res>
    implements $PokenmonFormModelCopyWith<$Res> {
  _$PokenmonFormModelCopyWithImpl(this._value, this._then);

  final PokenmonFormModel _value;
  // ignore: unused_field
  final $Res Function(PokenmonFormModel) _then;

  @override
  $Res call({
    Object? sprites = freezed,
  }) {
    return _then(_value.copyWith(
      sprites: sprites == freezed
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as PokenmonSpriteModel,
    ));
  }

  @override
  $PokenmonSpriteModelCopyWith<$Res> get sprites {
    return $PokenmonSpriteModelCopyWith<$Res>(_value.sprites, (value) {
      return _then(_value.copyWith(sprites: value));
    });
  }
}

/// @nodoc
abstract class _$PokenmonFormModelCopyWith<$Res>
    implements $PokenmonFormModelCopyWith<$Res> {
  factory _$PokenmonFormModelCopyWith(
          _PokenmonFormModel value, $Res Function(_PokenmonFormModel) then) =
      __$PokenmonFormModelCopyWithImpl<$Res>;
  @override
  $Res call({PokenmonSpriteModel sprites});

  @override
  $PokenmonSpriteModelCopyWith<$Res> get sprites;
}

/// @nodoc
class __$PokenmonFormModelCopyWithImpl<$Res>
    extends _$PokenmonFormModelCopyWithImpl<$Res>
    implements _$PokenmonFormModelCopyWith<$Res> {
  __$PokenmonFormModelCopyWithImpl(
      _PokenmonFormModel _value, $Res Function(_PokenmonFormModel) _then)
      : super(_value, (v) => _then(v as _PokenmonFormModel));

  @override
  _PokenmonFormModel get _value => super._value as _PokenmonFormModel;

  @override
  $Res call({
    Object? sprites = freezed,
  }) {
    return _then(_PokenmonFormModel(
      sprites: sprites == freezed
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as PokenmonSpriteModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokenmonFormModel implements _PokenmonFormModel {
  const _$_PokenmonFormModel({required this.sprites});

  factory _$_PokenmonFormModel.fromJson(Map<String, dynamic> json) =>
      _$$_PokenmonFormModelFromJson(json);

  @override
  final PokenmonSpriteModel sprites;

  @override
  String toString() {
    return 'PokenmonFormModel(sprites: $sprites)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PokenmonFormModel &&
            (identical(other.sprites, sprites) ||
                const DeepCollectionEquality().equals(other.sprites, sprites)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(sprites);

  @JsonKey(ignore: true)
  @override
  _$PokenmonFormModelCopyWith<_PokenmonFormModel> get copyWith =>
      __$PokenmonFormModelCopyWithImpl<_PokenmonFormModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokenmonFormModelToJson(this);
  }
}

abstract class _PokenmonFormModel implements PokenmonFormModel {
  const factory _PokenmonFormModel({required PokenmonSpriteModel sprites}) =
      _$_PokenmonFormModel;

  factory _PokenmonFormModel.fromJson(Map<String, dynamic> json) =
      _$_PokenmonFormModel.fromJson;

  @override
  PokenmonSpriteModel get sprites => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PokenmonFormModelCopyWith<_PokenmonFormModel> get copyWith =>
      throw _privateConstructorUsedError;
}
