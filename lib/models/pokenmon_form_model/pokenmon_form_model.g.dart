// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokenmon_form_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokenmonFormModel _$$_PokenmonFormModelFromJson(Map<String, dynamic> json) =>
    _$_PokenmonFormModel(
      sprites:
          PokenmonSpriteModel.fromJson(json['sprites'] as Map<String, dynamic>),
      height: json['height'] as num?,
      weight: json['weight'] as num?,
      types: (json['types'] as List<dynamic>?)
          ?.map((e) => TypesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_PokenmonFormModelToJson(
        _$_PokenmonFormModel instance) =>
    <String, dynamic>{
      'sprites': instance.sprites,
      'height': instance.height,
      'weight': instance.weight,
      'types': instance.types,
      'name': instance.name,
    };
