extension FirstCharacterCapitaizeExtension on String {
  String get firstCapitalize {
    if (length > 0) {
      return '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
    } else {
      return '';
    }
  }
}
