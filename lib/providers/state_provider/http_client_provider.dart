import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;
final httpClientProvider = StateProvider<http.Client>((ref){
  return  http.Client();
});