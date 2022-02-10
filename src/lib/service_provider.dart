import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'application/business_rules/AplicacaoBusinessRules.dart';
import 'application/business_rules/CredencialBusinessRules.dart';
import 'application/business_rules/OnboardingBusinessRules.dart';
import 'application/external_services/ApiExternaService.dart';
import 'application/internal_services/CredencialService.dart';
import 'domain/contract/application/business_rules/IAplicacaoBusinessRules.dart';
import 'domain/contract/application/business_rules/ICredencialBusinessRules.dart';
import 'domain/contract/application/business_rules/IOnboardingBusinessRules.dart';
import 'domain/contract/application/external_services/IApiExternaService.dart';
import 'domain/contract/application/internal_services/ICredencialService.dart';
import 'infraestructure/http_client/custom_dio.dart';

List<Bind> setupServiceProvider(List<Bind> binds) {
  // serviceProvider.registerSingleton<AppModel>(AppModel());
  // serviceProvider.registerLazySingleton<RESTAPI>(() =>RestAPIImplementation());
  //var myAppModel = serviceProvider.get<AppModel>();
  return [
    Bind<IApiExternaService>((i) => ApiExternaService(i.get())),
    Bind<ICredencialService>((i) => CredencialService(i.get())),
    Bind<IOnboardingBusinessRules>((i) => OnboardingBusinessRules()),
    Bind<ICredencialBusinessRules>((i) => CredencialBusinessRules(i.get())),
    Bind<IAplicacaoBusinessRules>((i) => AplicacaoBusinessRules()),
    Bind((i) => Dio()),
    Bind((i) => CustomDio(i.get())),
    ...binds
  ];
}
