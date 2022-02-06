import '../../domain/contract/application/business_rules/ICredencialBusinessRules.dart';
import '../../domain/contract/application/internal_services/ICredencialService.dart';

class CredencialBusinessRules implements ICredencialBusinessRules {
  final ICredencialService _credencialService;
  CredencialBusinessRules(this._credencialService) {}

  @override
  Future<String> handle(String key) async {
    return Future.delayed(
        Duration(milliseconds: 500), () => _credencialService.handle(key));
  }
}
