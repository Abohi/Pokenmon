import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon/models/pokenmon_form_model/pokenmon_sprite.dart';
import 'package:pokemon/models/pokenmon_names_model/pokenmon_results_model.dart';
import 'package:pokemon/models/types_model/type_model.dart';
part 'types_model.freezed.dart';
part 'types_model.g.dart';
@freezed
class TypesModel with _$TypesModel{
  const factory TypesModel({
    required num slot,required TypeModel type
  })=_TypesModel;
  factory TypesModel.fromJson(Map<String, dynamic> json) => _$TypesModelFromJson(json);
}