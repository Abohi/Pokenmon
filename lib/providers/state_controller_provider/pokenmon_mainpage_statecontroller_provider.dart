
import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokemon/models/pokenmon_names_model/pokenmon_names_model.dart';
import 'package:pokemon/services/pokenmon_repository/pokenmon_repository.dart';

import '../../models/custom_exeption_model/custom_exception.dart';
import '../../models/network_failure_model/network_failure.dart';


final pokenmonStateControllerProvider =
StateNotifierProvider<PokenmonController, AsyncValue<Either<NetworkFailure,PokenmonNamesModel>>>(
      (ref) {
    return PokenmonController(ref.read);
  },
);
class PokenmonController extends StateNotifier<AsyncValue<Either<NetworkFailure,PokenmonNamesModel>>> {
  final Reader _read;
  PokenmonController(this._read) : super(AsyncValue.loading()) {
    getActiveInvestment();
  }

  Future<void> getActiveInvestment({bool isRefreshing = false}) async {
    if (isRefreshing) state = AsyncValue.loading();
    try {
      final items =
      await _read(pokenmonRepositoryProvider).getPokenmon();
      if (mounted) {
        state = AsyncValue.data(items);
      }
    } on CustomException catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

}