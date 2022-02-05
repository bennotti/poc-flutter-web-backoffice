import 'package:flutter_test/flutter_test.dart';
import 'package:poc_flutter_web_backoffice/app/store/splashscreen_store.dart';
 
void main() {
  late SplashscreenStore store;

  setUpAll(() {
    store = SplashscreenStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}