import 'package:freezed_annotation/freezed_annotation.dart';

import '../pokenmon_form_model/pokenmon_form_model.dart';
part 'pokenmon_results_model.freezed.dart';
part 'pokenmon_results_model.g.dart';
@freezed
class PokenmonResultModel with _$PokenmonResultModel{
  const factory PokenmonResultModel({required String name,required String url,PokenmonFormModel? dummyPokenmon})=_PokenmonResultModel;
  factory PokenmonResultModel.fromJson(Map<String, dynamic> json) => _$PokenmonResultModelFromJson(json);
}