import 'package:poc_flutter_web_backoffice/app/store/splashscreen_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'pages/credencial/login_page.dart';
import 'pages/splashscreen_page.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => SplashscreenStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute,
        transition: TransitionType.noTransition,
        child: (_, arges0) => SplashscreenPage()),
    ChildRoute('/login',
        transition: TransitionType.noTransition,
        child: (_, arges0) => LoginPage()),
  ];
}
