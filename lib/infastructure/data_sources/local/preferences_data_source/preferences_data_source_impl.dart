import 'package:shared_preferences/shared_preferences.dart';

import 'preferences_data_source.dart';

class PreferencesDataSourceImpl implements PreferencesDataSource {
  SharedPreferences? _sp;

  @override
  Future<bool?> get isIntroPageSeen async {
    var sp = await _init();
    return sp?.getBool(SharedPreferencesKeys.introPageSeen);
  }

  @override
  Future<bool?> storeIntroPageSeen() async {
    var sp = await _init();
    return await sp?.setBool(SharedPreferencesKeys.introPageSeen, true);
  }

  Future<SharedPreferences?> _init() async {
    _sp = await SharedPreferences.getInstance();
    return _sp;
  }
}

class SharedPreferencesKeys {
  static const introPageSeen = 'intro_page_seen';
}
