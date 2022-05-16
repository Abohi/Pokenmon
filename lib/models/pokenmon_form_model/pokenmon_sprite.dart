import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon/models/pokenmon_names_model/pokenmon_results_model.dart';
part 'pokenmon_sprite.freezed.dart';
part 'pokenmon_sprite.g.dart';

@freezed
class PokenmonSpriteModel with _$PokenmonSpriteModel{
  const factory PokenmonSpriteModel({
    required String? back_default,required String? back_female,required String? back_shiny,required String? back_shiny_female,required String? front_default,
    required String? front_female,required String? front_shiny,required String? front_shiny_female
})=_PokenmonSpriteModel;
factory PokenmonSpriteModel.fromJson(Map<String, dynamic> json) => _$PokenmonSpriteModelFromJson(json);
}