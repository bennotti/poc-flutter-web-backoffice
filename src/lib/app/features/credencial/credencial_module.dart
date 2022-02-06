import 'package:poc_flutter_web_backoffice/app/features/credencial/store/esqueceu_senha_store.dart';
import 'package:poc_flutter_web_backoffice/app/features/credencial/store/login_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'pages/esqueceu_senha_page.dart';
import 'pages/login_page.dart';

class CredencialModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => EsqueceuSenhaStore()),
    Bind.lazySingleton((i) => LoginStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/login',
        child: (_, args) => LoginPage(),
        transition: TransitionType.noTransition),
    ChildRoute('/esqueceu-senha',
        child: (_, args) => EsqueceuSenhaPage(),
        transition: TransitionType.noTransition),
  ];
}
