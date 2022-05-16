// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokenmon_names_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokenmonNamesModel _$$_PokenmonNamesModelFromJson(
        Map<String, dynamic> json) =>
    _$_PokenmonNamesModel(
      count: json['count'] as num,
      results: (json['results'] as List<dynamic>)
          .map((e) => PokenmonResultModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PokenmonNamesModelToJson(
        _$_PokenmonNamesModel instance) =>
    <String, dynamic>{
      'count': instance.count,
      'results': instance.results,
    };
