import 'package:poc_flutter_web_backoffice/app/store/splashscreen_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'features/credencial/credencial_module.dart';
import 'features/dashboard/dashboard_module.dart';
import 'features/onboarding/onboarding_module.dart';
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
    ModuleRoute('/credencial', module: CredencialModule()),
    ModuleRoute('/onboarding', module: OnboardingModule()),
    ModuleRoute('/dashboard', module: DashboardModule()),
  ];
}
