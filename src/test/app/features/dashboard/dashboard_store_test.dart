import 'package:flutter_test/flutter_test.dart';
import 'package:poc_flutter_web_backoffice/app/features/dashboard/dashboard_store.dart';
 
void main() {
  late DashboardStore store;

  setUpAll(() {
    store = DashboardStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}