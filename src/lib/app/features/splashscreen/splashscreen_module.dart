import 'package:flutter_modular/flutter_modular.dart';

import 'pages/splashscreen_page.dart';
import 'store/splashscreen_store.dart';

class SplashscreenModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => SplashscreenStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/',
        child: (_, args) => SplashscreenPage(),
        transition: TransitionType.noTransition),
  ];
}
