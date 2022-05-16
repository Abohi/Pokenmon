import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon/models/pokenmon_names_model/pokenmon_results_model.dart';
part 'pokenmon_names_model.freezed.dart';
part 'pokenmon_names_model.g.dart';
@freezed
class PokenmonNamesModel with _$PokenmonNamesModel{
  const factory PokenmonNamesModel({required num count,required List<PokenmonResultModel> results})=_PokenmonNamesModel;
  factory PokenmonNamesModel.fromJson(Map<String, dynamic> json) => _$PokenmonNamesModelFromJson(json);
}