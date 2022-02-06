import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:poc_flutter_web_backoffice/app/features/onboarding/onboarding_module.dart';
 
void main() {

  setUpAll(() {
    initModule(OnboardingModule());
  });
}