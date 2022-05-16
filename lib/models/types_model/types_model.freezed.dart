// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'types_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TypesModel _$TypesModelFromJson(Map<String, dynamic> json) {
  return _TypesModel.fromJson(json);
}

/// @nodoc
class _$TypesModelTearOff {
  const _$TypesModelTearOff();

  _TypesModel call({required num slot, required TypeModel type}) {
    return _TypesModel(
      slot: slot,
      type: type,
    );
  }

  TypesModel fromJson(Map<String, Object> json) {
    return TypesModel.fromJson(json);
  }
}

/// @nodoc
const $TypesModel = _$TypesModelTearOff();

/// @nodoc
mixin _$TypesModel {
  num get slot => throw _privateConstructorUsedError;
  TypeModel get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TypesModelCopyWith<TypesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypesModelCopyWith<$Res> {
  factory $TypesModelCopyWith(
          TypesModel value, $Res Function(TypesModel) then) =
      _$TypesModelCopyWithImpl<$Res>;
  $Res call({num slot, TypeModel type});

  $TypeModelCopyWith<$Res> get type;
}

/// @nodoc
class _$TypesModelCopyWithImpl<$Res> implements $TypesModelCopyWith<$Res> {
  _$TypesModelCopyWithImpl(this._value, this._then);

  final TypesModel _value;
  // ignore: unused_field
  final $Res Function(TypesModel) _then;

  @override
  $Res call({
    Object? slot = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      slot: slot == freezed
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as num,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeModel,
    ));
  }

  @override
  $TypeModelCopyWith<$Res> get type {
    return $TypeModelCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

/// @nodoc
abstract class _$TypesModelCopyWith<$Res> implements $TypesModelCopyWith<$Res> {
  factory _$TypesModelCopyWith(
          _TypesModel value, $Res Function(_TypesModel) then) =
      __$TypesModelCopyWithImpl<$Res>;
  @override
  $Res call({num slot, TypeModel type});

  @override
  $TypeModelCopyWith<$Res> get type;
}

/// @nodoc
class __$TypesModelCopyWithImpl<$Res> extends _$TypesModelCopyWithImpl<$Res>
    implements _$TypesModelCopyWith<$Res> {
  __$TypesModelCopyWithImpl(
      _TypesModel _value, $Res Function(_TypesModel) _then)
      : super(_value, (v) => _then(v as _TypesModel));

  @override
  _TypesModel get _value => super._value as _TypesModel;

  @override
  $Res call({
    Object? slot = freezed,
    Object? type = freezed,
  }) {
    return _then(_TypesModel(
      slot: slot == freezed
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as num,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TypesModel implements _TypesModel {
  const _$_TypesModel({required this.slot, required this.type});

  factory _$_TypesModel.fromJson(Map<String, dynamic> json) =>
      _$$_TypesModelFromJson(json);

  @override
  final num slot;
  @override
  final TypeModel type;

  @override
  String toString() {
    return 'TypesModel(slot: $slot, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TypesModel &&
            (identical(other.slot, slot) ||
                const DeepCollectionEquality().equals(other.slot, slot)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(slot) ^
      const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  _$TypesModelCopyWith<_TypesModel> get copyWith =>
      __$TypesModelCopyWithImpl<_TypesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TypesModelToJson(this);
  }
}

abstract class _TypesModel implements TypesModel {
  const factory _TypesModel({required num slot, required TypeModel type}) =
      _$_TypesModel;

  factory _TypesModel.fromJson(Map<String, dynamic> json) =
      _$_TypesModel.fromJson;

  @override
  num get slot => throw _privateConstructorUsedError;
  @override
  TypeModel get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TypesModelCopyWith<_TypesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
