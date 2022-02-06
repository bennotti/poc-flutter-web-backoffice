import '../../domain/contract/application/external_services/IApiExternaService.dart';
import '../../domain/contract/application/internal_services/ICredencialService.dart';

class CredencialService implements ICredencialService {
  final IApiExternaService _apiExternaService;
  CredencialService(this._apiExternaService) {}

  @override
  Future<String> handle(String key) async {
    return await _apiExternaService.handle(key);
  }
}
