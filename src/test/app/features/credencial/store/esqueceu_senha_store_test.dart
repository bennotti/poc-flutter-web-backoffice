import 'package:flutter_test/flutter_test.dart';
import 'package:poc_flutter_web_backoffice/app/features/credencial/store/esqueceu_senha_store.dart';
 
void main() {
  late EsqueceuSenhaStore store;

  setUpAll(() {
    store = EsqueceuSenhaStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}