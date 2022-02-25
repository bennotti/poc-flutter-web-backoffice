import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../../../domain/contract/application/business_rules/IAplicacaoBusinessRules.dart';

part 'splashscreen_store.g.dart';

class SplashscreenStore = _SplashscreenStoreBase with _$SplashscreenStore;

abstract class _SplashscreenStoreBase with Store {
  final aplicacaoBusinessRules = Modular.get<IAplicacaoBusinessRules>();
  @action
  Future<bool> checkLogin() async {
    return Future.delayed(Duration(milliseconds: 1000), () => false);
  }
}
