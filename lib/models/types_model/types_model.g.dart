// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'types_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TypesModel _$$_TypesModelFromJson(Map<String, dynamic> json) =>
    _$_TypesModel(
      slot: json['slot'] as num,
      type: TypeModel.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TypesModelToJson(_$_TypesModel instance) =>
    <String, dynamic>{
      'slot': instance.slot,
      'type': instance.type,
    };
