// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TypeModel _$TypeModelFromJson(Map<String, dynamic> json) {
  return _TypeModel.fromJson(json);
}

/// @nodoc
class _$TypeModelTearOff {
  const _$TypeModelTearOff();

  _TypeModel call({required String name}) {
    return _TypeModel(
      name: name,
    );
  }

  TypeModel fromJson(Map<String, Object> json) {
    return TypeModel.fromJson(json);
  }
}

/// @nodoc
const $TypeModel = _$TypeModelTearOff();

/// @nodoc
mixin _$TypeModel {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TypeModelCopyWith<TypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeModelCopyWith<$Res> {
  factory $TypeModelCopyWith(TypeModel value, $Res Function(TypeModel) then) =
      _$TypeModelCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$TypeModelCopyWithImpl<$Res> implements $TypeModelCopyWith<$Res> {
  _$TypeModelCopyWithImpl(this._value, this._then);

  final TypeModel _value;
  // ignore: unused_field
  final $Res Function(TypeModel) _then;

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
abstract class _$TypeModelCopyWith<$Res> implements $TypeModelCopyWith<$Res> {
  factory _$TypeModelCopyWith(
          _TypeModel value, $Res Function(_TypeModel) then) =
      __$TypeModelCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$TypeModelCopyWithImpl<$Res> extends _$TypeModelCopyWithImpl<$Res>
    implements _$TypeModelCopyWith<$Res> {
  __$TypeModelCopyWithImpl(_TypeModel _value, $Res Function(_TypeModel) _then)
      : super(_value, (v) => _then(v as _TypeModel));

  @override
  _TypeModel get _value => super._value as _TypeModel;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_TypeModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TypeModel implements _TypeModel {
  const _$_TypeModel({required this.name});

  factory _$_TypeModel.fromJson(Map<String, dynamic> json) =>
      _$$_TypeModelFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'TypeModel(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TypeModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$TypeModelCopyWith<_TypeModel> get copyWith =>
      __$TypeModelCopyWithImpl<_TypeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TypeModelToJson(this);
  }
}

abstract class _TypeModel implements TypeModel {
  const factory _TypeModel({required String name}) = _$_TypeModel;

  factory _TypeModel.fromJson(Map<String, dynamic> json) =
      _$_TypeModel.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TypeModelCopyWith<_TypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
