abstract class ILocalStorage {
  Future<dynamic> get(String key);
  Future put(String key, dynamic value);
  Future delete(String key);
}
