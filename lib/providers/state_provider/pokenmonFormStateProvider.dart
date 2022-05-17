import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:pokemon/models/pokenmon_form_model/pokenmon_form_model.dart';

import '../../models/pokenmon_names_model/pokenmon_results_model.dart';
final pokenMonFormProvider = StateProvider<List<PokenmonResultModel>>((ref){
  return  [];
});