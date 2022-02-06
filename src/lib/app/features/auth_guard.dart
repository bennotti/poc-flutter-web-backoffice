import 'package:flutter_modular/flutter_modular.dart';

class AuthGuard extends RouteGuard {
  AuthGuard() : super('/credencial/login');

  @override
  Future<bool> canActivate(String path, ModularRoute router) {
    return Future.delayed(Duration(milliseconds: 500), () => true);
  }
}
