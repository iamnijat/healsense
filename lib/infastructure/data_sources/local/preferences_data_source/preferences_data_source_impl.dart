import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'preferences_data_source.dart';

@LazySingleton(as: PreferencesDataSource)
class PreferencesDataSourceImpl implements PreferencesDataSource {
  PreferencesDataSourceImpl(this._preferences);

  final SharedPreferences _preferences;

  @override
  bool? get isIntroPageSeen =>
      _preferences.getBool(SharedPreferencesKeys.introPageSeen);

  @override
  Future<bool> storeIntroPageSeen() async =>
      await _preferences.setBool(SharedPreferencesKeys.introPageSeen, true);
}

class SharedPreferencesKeys {
  static const introPageSeen = 'intro_page_seen';
}
