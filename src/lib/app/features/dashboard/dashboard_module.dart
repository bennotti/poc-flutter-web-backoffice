import 'package:poc_flutter_web_backoffice/app/features/dashboard/dashboard_Page.dart';
import 'package:poc_flutter_web_backoffice/app/features/dashboard/dashboard_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DashboardModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => DashboardStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => DashboardPage()),
  ];
}
