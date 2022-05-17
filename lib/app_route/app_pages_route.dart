import 'package:auto_route/annotations.dart';
import 'package:pokemon/pages/poken_detail_page.dart';

import '../pages/add_pokenmon_page.dart';
import '../pages/main_pokenmon_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    const AutoRoute(page: MainPokemonPage,initial: true),
    const AutoRoute(page: PokenmonDetailPage,),
    const AutoRoute(page: AddPokemonPage,)

  ],
)
class $AppRouter {}