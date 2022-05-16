import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon/models/network_failure_model/genericErrorResponseModel.dart';


part 'network_failure.freezed.dart';
/// Network exceptions

@freezed
class NetworkFailure  with _$NetworkFailure implements Exception{
  
  factory NetworkFailure([GenericResponseModel? message, String? prefix ]) = _NetworkFailure;

  const factory  NetworkFailure.fetchDataException([  @Default('Error During Communication: ') String? prefix]) = FetchDataException;

  const factory  NetworkFailure.badRequestException([ @Default('Invalid Request: ') String? prefix]) = BadRequestException;

  const factory  NetworkFailure.unauthorisedException([  @Default('Unauthorised: ') String? prefix]) = UnauthorisedException;

  const factory  NetworkFailure.invalidInputException([ @Default('Invalid Input: ') String? prefix]) = InvalidInputException;

  const factory  NetworkFailure.noNetworkException([ @Default('No Internet connection detected: ') String? prefix]) = NoNetworkException;
  const factory  NetworkFailure.generalException([ @Default('Something went wrong: ') String? prefix]) = GeneralException;
}
