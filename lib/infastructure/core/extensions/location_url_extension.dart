import '../constants/strings.dart';

extension LocationUrlExtension on String {
  String get locUrl => '${AppStrings.locationUrl}/maps?q=loc:$this';
}
