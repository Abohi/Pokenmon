import 'package:hooks_riverpod/hooks_riverpod.dart';

final pokenmonPageIndexHolderProvider = StateProvider<num>((ref){
  return  0;
});
final pokenmonTotalCountHolderProvider = StateProvider<num>((ref){
  return  10;
});