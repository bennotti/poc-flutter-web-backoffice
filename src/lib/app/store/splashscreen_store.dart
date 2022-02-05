import 'package:mobx/mobx.dart';

part 'splashscreen_store.g.dart';

class SplashscreenStore = _SplashscreenStoreBase with _$SplashscreenStore;

abstract class _SplashscreenStoreBase with Store {
  @action
  Future<bool> checkLogin() async {
    return Future.delayed(Duration(milliseconds: 7000), () => false);
  }
}
