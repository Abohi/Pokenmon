import 'package:freezed_annotation/freezed_annotation.dart';
part 'pokenmon_results_model.freezed.dart';
part 'pokenmon_results_model.g.dart';
@freezed
class PokenmonResultModel with _$PokenmonResultModel{
  const factory PokenmonResultModel({required String name})=_PokenmonResultModel;
  factory PokenmonResultModel.fromJson(Map<String, dynamic> json) => _$PokenmonResultModelFromJson(json);
}