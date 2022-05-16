// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'genericErrorResponseModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GenericResponseModel _$GenericResponseModelFromJson(Map<String, dynamic> json) {
  return _GenericResponseModel.fromJson(json);
}

/// @nodoc
class _$GenericResponseModelTearOff {
  const _$GenericResponseModelTearOff();

  _GenericResponseModel call({required bool success, required String message}) {
    return _GenericResponseModel(
      success: success,
      message: message,
    );
  }

  GenericResponseModel fromJson(Map<String, Object> json) {
    return GenericResponseModel.fromJson(json);
  }
}

/// @nodoc
const $GenericResponseModel = _$GenericResponseModelTearOff();

/// @nodoc
mixin _$GenericResponseModel {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenericResponseModelCopyWith<GenericResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenericResponseModelCopyWith<$Res> {
  factory $GenericResponseModelCopyWith(GenericResponseModel value,
          $Res Function(GenericResponseModel) then) =
      _$GenericResponseModelCopyWithImpl<$Res>;
  $Res call({bool success, String message});
}

/// @nodoc
class _$GenericResponseModelCopyWithImpl<$Res>
    implements $GenericResponseModelCopyWith<$Res> {
  _$GenericResponseModelCopyWithImpl(this._value, this._then);

  final GenericResponseModel _value;
  // ignore: unused_field
  final $Res Function(GenericResponseModel) _then;

  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GenericResponseModelCopyWith<$Res>
    implements $GenericResponseModelCopyWith<$Res> {
  factory _$GenericResponseModelCopyWith(_GenericResponseModel value,
          $Res Function(_GenericResponseModel) then) =
      __$GenericResponseModelCopyWithImpl<$Res>;
  @override
  $Res call({bool success, String message});
}

/// @nodoc
class __$GenericResponseModelCopyWithImpl<$Res>
    extends _$GenericResponseModelCopyWithImpl<$Res>
    implements _$GenericResponseModelCopyWith<$Res> {
  __$GenericResponseModelCopyWithImpl(
      _GenericResponseModel _value, $Res Function(_GenericResponseModel) _then)
      : super(_value, (v) => _then(v as _GenericResponseModel));

  @override
  _GenericResponseModel get _value => super._value as _GenericResponseModel;

  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
  }) {
    return _then(_GenericResponseModel(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GenericResponseModel implements _GenericResponseModel {
  const _$_GenericResponseModel({required this.success, required this.message});

  factory _$_GenericResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_GenericResponseModelFromJson(json);

  @override
  final bool success;
  @override
  final String message;

  @override
  String toString() {
    return 'GenericResponseModel(success: $success, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GenericResponseModel &&
            (identical(other.success, success) ||
                const DeepCollectionEquality()
                    .equals(other.success, success)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$GenericResponseModelCopyWith<_GenericResponseModel> get copyWith =>
      __$GenericResponseModelCopyWithImpl<_GenericResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenericResponseModelToJson(this);
  }
}

abstract class _GenericResponseModel implements GenericResponseModel {
  const factory _GenericResponseModel(
      {required bool success,
      required String message}) = _$_GenericResponseModel;

  factory _GenericResponseModel.fromJson(Map<String, dynamic> json) =
      _$_GenericResponseModel.fromJson;

  @override
  bool get success => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GenericResponseModelCopyWith<_GenericResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
