import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;
final pokenmonDefaultImageUrlProvider = StateProvider<String>((ref){
  return  "";
});