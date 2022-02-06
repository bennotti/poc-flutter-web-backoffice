import 'package:mobx/mobx.dart';

part 'esqueceu_senha_store.g.dart';

class EsqueceuSenhaStore = _EsqueceuSenhaStoreBase with _$EsqueceuSenhaStore;
abstract class _EsqueceuSenhaStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}