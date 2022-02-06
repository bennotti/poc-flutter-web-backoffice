import '../../domain/contract/application/business_rules/IOnboardingBusinessRules.dart';

class OnboardingBusinessRules implements IOnboardingBusinessRules {
  @override
  Future<String> handle(String key) async {
    return Future.delayed(Duration(milliseconds: 500), () => "ok");
  }
}
