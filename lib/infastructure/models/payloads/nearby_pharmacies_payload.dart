import 'dart:collection' show MapView;

import 'package:flutter/foundation.dart' show immutable;

@immutable
class NearbyPharmaciesPayload extends MapView<String, dynamic> {
  NearbyPharmaciesPayload({
    required String? keyword,
    required String? location,
    required String? radius,
    required String? key,
  }) : super({
          "keyword": keyword,
          "location": location,
          "radius": radius,
          "key": key,
        });
}
