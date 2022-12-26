import 'package:healsense/infastructure/core/extensions/random_int_extension.dart';

import '../constants/assets.dart';

class PharmacyThumbnailsUtil {
  static List<String> get thumbnails {
    return [
      AppAssets.pharmacyFirst,
      AppAssets.pharmacySecond,
      AppAssets.pharmacyThird,
      AppAssets.pharmacyFourth,
      AppAssets.pharmacyFifth,
      AppAssets.pharmacySixth,
      AppAssets.pharmacySeventh,
      AppAssets.pharmacyEighth,
    ];
  }

  static String get thumbnail {
    return thumbnails[(thumbnails.length - 1).randInt];
  }
}
