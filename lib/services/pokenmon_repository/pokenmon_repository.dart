import 'dart:typed_data';


import 'package:dartz/dartz.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokemon/app_route/api_route.dart';
import 'package:pokemon/models/pokenmon_names_model/pokenmon_names_model.dart';
import 'package:pokemon/providers/state_provider/pokenmon_pageindex_holder_provider.dart';
import 'package:pokemon/services/network_helper.dart';

import '../../models/network_failure_model/network_failure.dart';
import '../../models/pokenmon_form_model/pokenmon_form_model.dart';
abstract class BasePokenmonRepository {
  Future<Either<NetworkFailure, PokenmonNamesModel>> getPokenmon();
  Future<Either<NetworkFailure, PokenmonFormModel>> getPokenmonForm(int id);
}

final pokenmonRepositoryProvider =
Provider<PokenmonRepository>((ref) => PokenmonRepository(ref));

class PokenmonRepository implements BasePokenmonRepository {
  final ProviderReference _read;

  const PokenmonRepository(this._read);

  @override
  Future<Either<NetworkFailure, PokenmonNamesModel>> getPokenmon() async{
    try{
      final Map<String, dynamic> response = await _read.read(networkHelperProvider).getRequest(ApiRoutes.GET_POKENMON+"?offset=${_read.read(pokenmonPageIndexHolderProvider).state}&limit=10", {}) as Map<String, dynamic>;
      final base = PokenmonNamesModel.fromJson(response);
      _read.read(pokenmonTotalCountHolderProvider).state=base.count;
      return right(base);
    }on NetworkFailure catch (e) {
      return left(e);
    } on Exception catch (e) {
      return left(GeneralException());
    }
  }

  @override
  Future<Either<NetworkFailure, PokenmonFormModel>> getPokenmonForm(int id) async{
    try{
      final Map<String, dynamic> response = await _read.read(networkHelperProvider).getRequest(ApiRoutes.GET_POKENMON+"/${id}", {}) as Map<String, dynamic>;
      final base = PokenmonFormModel.fromJson(response);
      return right(base);
    }on NetworkFailure catch (e) {
      return left(e);
    } on Exception catch (e) {
      return left(GeneralException());
    }
  }
}