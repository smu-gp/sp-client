import 'package:fill_memo/repository/repository.dart';
import 'package:universal_html/html.dart';

class LocalPreferenceRepository implements PreferenceRepository {
  LocalPreferenceRepository([Object object]);

  @override
  bool getBool(String key) {
    return window.localStorage[key] == "true";
  }

  @override
  int getInt(String key) {
    return int.parse(window.localStorage[key]);
  }

  @override
  String getString(String key) {
    return window.localStorage[key];
  }

  @override
  Future<bool> setBool(String key, bool value) async {
    window.localStorage[key] = value ? "true" : "false";
    return false;
  }

  @override
  Future<bool> setInt(String key, int value) async {
    window.localStorage[key] = value.toString();
    return false;
  }

  @override
  Future<bool> setString(String key, String value) async {
    window.localStorage[key] = value;
    return false;
  }
}
