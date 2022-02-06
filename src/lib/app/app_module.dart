import 'package:flutter_modular/flutter_modular.dart';

import '../service_provider.dart';
import 'features/credencial/credencial_module.dart';
import 'features/dashboard/dashboard_module.dart';
import 'features/onboarding/onboarding_module.dart';
import 'features/splashscreen/splashscreen_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = setupServiceProvider([]);

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute,
        module: SplashscreenModule(), transition: TransitionType.noTransition),
    ModuleRoute('/credencial',
        module: CredencialModule(), transition: TransitionType.noTransition),
    ModuleRoute('/onboarding',
        module: OnboardingModule(), transition: TransitionType.noTransition),
    ModuleRoute('/dashboard',
        module: DashboardModule(), transition: TransitionType.noTransition),
  ];
}
