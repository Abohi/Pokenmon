import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon/models/pokenmon_form_model/pokenmon_sprite.dart';
import 'package:pokemon/models/pokenmon_names_model/pokenmon_results_model.dart';
part 'pokenmon_form_model.freezed.dart';
part 'pokenmon_form_model.g.dart';
@freezed
class PokenmonFormModel with _$PokenmonFormModel{
  const factory PokenmonFormModel({
    required PokenmonSpriteModel sprites,
    required num height,required num weight,
})=_PokenmonFormModel;
  factory PokenmonFormModel.fromJson(Map<String, dynamic> json) => _$PokenmonFormModelFromJson(json);
}