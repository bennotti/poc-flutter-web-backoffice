import 'package:mobx/mobx.dart';

part 'another_page_store.g.dart';

class AnotherPageStore = _AnotherPageStoreBase with _$AnotherPageStore;

abstract class _AnotherPageStoreBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
