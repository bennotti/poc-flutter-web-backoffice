import '../../domain/contract/application/business_rules/IAplicacaoBusinessRules.dart';

class AplicacaoBusinessRules implements IAplicacaoBusinessRules {
  @override
  Future<String> handle(String key) async {
    return Future.delayed(Duration(milliseconds: 500), () => "ok");
  }
}
