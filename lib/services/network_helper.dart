import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http_parser/http_parser.dart';
import 'package:http/http.dart' as http;
import 'package:pokemon/models/network_failure_model/network_failure.dart';

import '../models/network_failure_model/genericErrorResponseModel.dart';
import '../providers/state_provider/http_client_provider.dart';
final networkHelperProvider =
Provider<NetworkHelper>((ref){
  return NetworkHelper(ref,ref.read(httpClientProvider).state);
});
class NetworkHelper {
  final ProviderReference _read;
  NetworkHelper(this._read,http.Client conn):_http = conn;
  static String baseUrl = dotenv.env['BASE_URL']!;
  // static String paystackBaseUrl =dotenv..env['PAYSTACK_BASE_URL']!;
  final http.Client _http;

  Future<dynamic> getRequest(String url, bool isDetail,[Map<String, String>? header,]) async {
    dynamic responseJson;
    try{
      print(Uri.parse(baseUrl + url));
      String getUrl = isDetail?url:baseUrl+url;
      final response = await _http.get(Uri.parse(getUrl), headers:{'Content-type': 'application/json;charset=UTF-8','Charset': 'utf-8',...?header});

      print(response.body.toString());
      print('status code: '+response.statusCode.toString());
      responseJson = _returnResponse(response);
    } on SocketException {
      throw const NoNetworkException();
    }
    return responseJson;
  }





/*
  Future<dynamic> updateProfileSingleDocument(String url,KycSingleUploadModel kycSingleUploadModel,[Map<String, String>? header]) async {
    dynamic responseJson;
    try{
      final request = await http.MultipartRequest("POST",Uri.parse(baseUrl + url));
      request.files.add(
          await http.MultipartFile.fromPath(kycSingleUploadModel.kycType, kycSingleUploadModel.filePath,filename: kycSingleUploadModel.fileName,
              contentType: new MediaType(kycSingleUploadModel.utilityContentType.split("/")[0], kycUploadModel.utilityContentType.split("/")[1]))
      );
     request.files.add(
          await http.MultipartFile.fromPath('international_passport', kycUploadModel.idCardPath,filename: kycUploadModel.idFileName,
              contentType: new MediaType(kycUploadModel.idContentType.split("/")[0], kycUploadModel.idContentType.split("/")[1]))
      );
      request.files.add(
          await http.MultipartFile.fromPath('signature', kycUploadModel.signaturePath,filename: kycUploadModel.SignatureFileName,
              contentType: new MediaType(kycUploadModel.signatureContentType.split("/")[0], kycUploadModel.signatureContentType.split("/")[1]))

      );
      request.files.add(
          await http.MultipartFile.fromPath('passport-photograph', kycUploadModel.photoPath,filename: kycUploadModel.photoFileName,
              contentType: new MediaType(kycUploadModel.photoContentType.split("/")[0], kycUploadModel.photoContentType.split("/")[1]))

      );
      request.headers.addAll(header!);
      var res = await request.send();
      var stringResponse = await http.Response.fromStream(res);
      _read.read(isLoggedOutSignedInUser).state=stringResponse.statusCode==401;
      _read.read(statusCodeStateProvider).state=stringResponse.statusCode;
      print('status code: '+stringResponse.statusCode.toString());
      responseJson = _returnResponse(stringResponse);

      _read.read(jwtTokenProvider).state=res.headers["authorization"];
    }on SocketException {
      throw NoNetworkException(GenericResponseModel2(message: "No Internet connectivity", success: false, error: null));
    }
    return responseJson;
  }*/





  /// General response mapper
  dynamic _returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
      case 201:
        dynamic responseJson = json.decode( response.body.toString());
        print(responseJson);
        return responseJson;
      case 400:
        dynamic responseJson = json.decode( response.body.toString());


        throw const BadRequestException();
      case 401:
      case 403:
        dynamic responseJson = json.decode( response.body.toString());
        throw const UnauthorisedException();
      case 502:
        throw const UnauthorisedException();
      case 500:
      default:
        throw const FetchDataException();
    }
  }
}