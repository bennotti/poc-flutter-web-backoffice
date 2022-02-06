import 'package:poc_flutter_web_backoffice/app/features/dashboard/store/home_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../auth_guard.dart';
import 'pages/another_page.dart';
import 'pages/home_page.dart';
import 'store/another_page_store.dart';

class DashboardModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeStore()),
    Bind.lazySingleton((i) => AnotherPageStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/',
        child: (_, args) => HomePage(),
        transition: TransitionType.noTransition,
        guards: [AuthGuard()]),
    ChildRoute('/another-page',
        child: (_, args) => AnotherPage(),
        transition: TransitionType.noTransition,
        guards: [AuthGuard()]),
  ];
}
