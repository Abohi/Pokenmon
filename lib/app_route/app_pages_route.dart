import 'package:auto_route/annotations.dart';

import '../pages/main_pokenmon_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    const AutoRoute(page: MainPokemonPage,initial: true),

  ],
)
class $AppRouter {}