abstract class PreferencesDataSource {
  bool? get isIntroPageSeen;

  Future<bool> storeIntroPageSeen();
}
