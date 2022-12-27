abstract class PreferencesDataSource {
  Future<bool?> get isIntroPageSeen;

  Future<bool?> storeIntroPageSeen();
}
