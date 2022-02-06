import 'package:poc_flutter_web_backoffice/app/features/dashboard/store/home_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'pages/home_page.dart';

class DashboardModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/home',
        child: (_, args) => HomePage(),
        transition: TransitionType.noTransition),
  ];
}
