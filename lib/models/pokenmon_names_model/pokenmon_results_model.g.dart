// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokenmon_results_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokenmonResultModel _$$_PokenmonResultModelFromJson(
        Map<String, dynamic> json) =>
    _$_PokenmonResultModel(
      name: json['name'] as String,
      url: json['url'] as String,
      dummyPokenmon: json['dummyPokenmon'] == null
          ? null
          : PokenmonFormModel.fromJson(
              json['dummyPokenmon'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PokenmonResultModelToJson(
        _$_PokenmonResultModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
      'dummyPokenmon': instance.dummyPokenmon,
    };
