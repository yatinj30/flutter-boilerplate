import 'package:shared_preferences/shared_preferences.dart';

class AppPreference {
  static final AppPreference _appPreference = AppPreference._internal();

  factory AppPreference() {
    return _appPreference;
  }

  AppPreference._internal();

  late SharedPreferences _preferences;

  Future<void> initialAppPreference() async {
    _preferences = await SharedPreferences.getInstance();
  }

  Future setString(String key, String value) async {
    await _preferences.setString(key, value);
  }

  String getString(String key, {String defValue = ''}) {
    return _preferences.getString(key) != null
        ? (_preferences.getString(key) ?? '')
        : defValue;
  }

  Future setInt(String key, int value) async {
    await _preferences.setInt(key, value);
  }

  int getInt(String key, {int defValue = 0}) {
    return _preferences.getInt(key) != null
        ? (_preferences.getInt(key) ?? 0)
        : defValue;
  }

  Future setDouble(String key, double value) async {
    await _preferences.setDouble(key, value);
  }

  double getDouble(String key, {double defValue = 0.0}) {
    return _preferences.getDouble(key) != null
        ? (_preferences.getDouble(key) ?? 0.0)
        : defValue;
  }

  Future setStringList(String key, List<String> value) async {
    await _preferences.setStringList(key, value);
  }

  List<String> getStringList(String key, {List<String> defValue = const [""]}) {
    return _preferences.getStringList(key) != null
        ? (_preferences.getStringList(key) ?? [""])
        : defValue;
  }

  Future setBool(String key, bool value) async {
    await _preferences.setBool(key, value);
  }

  bool getBool(String key, {bool defValue = false}) {
    return _preferences.getBool(key) ?? defValue;
  }

  Future clearSharedPreferences() async {
    await _preferences.clear();
  }

  Future removeSharedPreferences({String? key}) async {
    await _preferences.remove(key ?? '');
  }
}
