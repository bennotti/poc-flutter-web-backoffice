import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'application/business_rules/AplicacaoBusinessRules.dart';
import 'application/business_rules/CredencialBusinessRules.dart';
import 'application/business_rules/OnboardingBusinessRules.dart';
import 'constants.dart';
import 'domain/contract/application/business_rules/IAplicacaoBusinessRules.dart';
import 'domain/contract/application/business_rules/ICredencialBusinessRules.dart';
import 'domain/contract/application/business_rules/IOnboardingBusinessRules.dart';
import 'infraestructure/http_client/custom_dio.dart';

List<Bind> setupServiceProvider(List<Bind> binds) {
  // serviceProvider.registerSingleton<AppModel>(AppModel());
  // serviceProvider.registerLazySingleton<RESTAPI>(() =>RestAPIImplementation());
  //var myAppModel = serviceProvider.get<AppModel>();
  return [
    Bind<IOnboardingBusinessRules>((i) => OnboardingBusinessRules()),
    Bind<ICredencialBusinessRules>((i) => CredencialBusinessRules(i.get())),
    Bind<IAplicacaoBusinessRules>((i) => AplicacaoBusinessRules()),
    Bind((i) => Dio(new BaseOptions(
          baseUrl: URL_BASE,
          contentType: Headers.jsonContentType,
          responseType: ResponseType.json,
          validateStatus: (_) => true,
        ))),
    Bind((i) => CustomDio(i.get())),
    ...binds
  ];
}
