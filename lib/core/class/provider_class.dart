import 'package:get/get.dart';
import './exception_class.dart';
import '../config/cache_config.dart';
import '../config/network_request_config.dart';

class ProviderClass extends GetxController {
  CacheConfig cacheConfig = CacheConfig();
  NetworkRequestConfig networkRequestConfig = NetworkRequestConfig();

  saveCache(String key, String value) async {
    try {
      cacheConfig.saveCache(key: key, value: value);
    } catch (e) {
      throw ExceptionClass(ExceptionClass.cache,
          message: "error when trying to save cache");
    }
  }

  getCache(String key) {
    try {
      return cacheConfig.getCache(key);
    } catch (e) {
      throw ExceptionClass(ExceptionClass.cache,
          message: "error when trying to get cache");
    }
  }

  deleteCache(String key) {
    try {
      cacheConfig.deleteCache(key);
    } catch (e) {
      throw ExceptionClass(ExceptionClass.cache,
          message: "error when trying to delete cache");
    }
  }

  Future doNetworkAndCachePost(String endpoint,
      {Map<String, dynamic> data = const {}}) async {
    Map<String, dynamic> value =
        await networkRequestConfig.doPost(endpoint, data: data);

    return value;
  }

  Future doNetworkAndCachePostWithCallback(
    String endpoint, {
    Map<String, dynamic> data = const {},
  }) async {
    Map<String, dynamic> value =
        await networkRequestConfig.doPost(endpoint, data: data);

    return value;
  }

  Future doNetworkGet(String endpoint,
      {Map<String, dynamic> queryparams = const {}}) async {
    Map<String, dynamic> value =
        await networkRequestConfig.doGet(endpoint, queryparams: queryparams);

    return value;
  }

  Future doNetworkPut(String endpoint,
      {Map<String, dynamic> data = const {}}) async {
    Map<String, dynamic> value =
        await networkRequestConfig.doPut(endpoint, data: data);

    return value;
  }

  Future doNetworkPatch(String endpoint,
      {Map<String, dynamic> data = const {}}) async {
    Map<String, dynamic> value =
        await networkRequestConfig.doPatch(endpoint, data: data);

    return value;
  }

  Future doNetworkDelete(String endpoint) async {
    await networkRequestConfig.doDelete(endpoint);
  }
}
