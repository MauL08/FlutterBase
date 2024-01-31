import 'package:hive/hive.dart';

class CacheConfig {
  Box box = Hive.box("cache");
  Future saveCache({required String key, required String value}) async {
    box.put(key, value);
  }

  deleteCache(String key) {
    box.delete(key);
  }

  getCache(String key) {
    var result = box.get(key);

    if (result != null) {
      return result;
    } else {
      return null;
    }
  }
}
