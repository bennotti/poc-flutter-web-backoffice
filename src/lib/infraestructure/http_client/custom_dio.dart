import 'package:dio/dio.dart';

class CustomDio {
  final Dio client;

  CustomDio(this.client) {
    //client.interceptors.add(CustomIntercetors());
    client.interceptors.add(InterceptorsWrapper(onRequest: (options, _) async {
      // client.interceptors.requestLock.lock();
      // String token = await storage.get("token");
      // if (token != "") {
      //   options.headers["Authorization"] = "Bearer " + token;
      // } else {
      //   options.headers.remove("Authorization");
      // }
      // client.interceptors.requestLock.unlock();
      //return options; //continue
    }));
  }
}
