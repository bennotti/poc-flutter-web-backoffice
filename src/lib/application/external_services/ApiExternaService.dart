import '../../domain/contract/application/external_services/IApiExternaService.dart';
import '../../infraestructure/http_client/custom_dio.dart';

class ApiExternaService implements IApiExternaService {
  final CustomDio _dio;
  ApiExternaService(this._dio) {}

  @override
  Future<String> handle(String key) async {
    var response = await _dio.client.get('ping');
    if (response.statusCode != 200) {
      print(response.data.toString());
      return "";
    }
    return "";
  }
}
