import 'package:freezed_annotation/freezed_annotation.dart';
part 'genericErrorResponseModel.freezed.dart';
part 'genericErrorResponseModel.g.dart';

@freezed
class GenericResponseModel with _$GenericResponseModel{
  const factory GenericResponseModel({required bool success,required String message})=_GenericResponseModel;
  factory GenericResponseModel.fromJson(Map<String, dynamic> json) => _$GenericResponseModelFromJson(json);
}