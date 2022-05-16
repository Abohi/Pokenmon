import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon/models/pokenmon_form_model/pokenmon_sprite.dart';
import 'package:pokemon/models/pokenmon_names_model/pokenmon_results_model.dart';
part 'type_model.freezed.dart';
part 'type_model.g.dart';
@freezed
class TypeModel with _$TypeModel{
  const factory TypeModel({
   required String name
  })=_TypeModel;
  factory TypeModel.fromJson(Map<String, dynamic> json) => _$TypeModelFromJson(json);
}