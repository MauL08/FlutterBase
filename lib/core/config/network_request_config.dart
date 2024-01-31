import 'package:dio/dio.dart' as dio;
import 'package:flutterbase/core/config/cache_config.dart';

late dio.Dio network;

Future<void> initNet() async {
  const String baseUrl = '';

  CacheConfig cacheConfig = CacheConfig();

  dio.BaseOptions options = dio.BaseOptions(
    baseUrl: baseUrl,
    receiveDataWhenStatusError: true,
    headers: {
      "Content-Type": "application/json",
      "Accept": "application/json",
      "Authorization": 'Bearer ${cacheConfig.getCache("access_token")}'
    },
  );

  network = dio.Dio(options);

  network.interceptors.add(dio.LogInterceptor(
    responseBody: true,
    requestHeader: false,
    responseHeader: true,
  ));
}

void updateHeader(String token) {
  network.options.headers["Authorization"] = "Bearer $token";
}

class NetworkRequestConfig {
  Future<Map<String, dynamic>> doPost(String endpoint,
      {Map<String, dynamic> data = const {}}) async {
    var response = await network.post(endpoint, data: data);
    return response.data;
  }

  Future<Map<String, dynamic>> doGet(String endpoint,
      {Map<String, dynamic> queryparams = const {}}) async {
    var response = await network.get(endpoint, queryParameters: queryparams);
    return response.data;
  }

  Future<Map<String, dynamic>> doPut(String endpoint,
      {Map<String, dynamic> data = const {}}) async {
    var response = await network.put(endpoint, data: data);
    return response.data;
  }

  Future<Map<String, dynamic>> doPatch(String endpoint,
      {Map<String, dynamic> data = const {}}) async {
    // print(data);
    var response = await network.patch(endpoint, data: data);
    return response.data;
  }

  Future<Map<String, dynamic>> doDelete(String endpoint) async {
    var response = await network.delete(endpoint);
    return response.data;
  }
}
