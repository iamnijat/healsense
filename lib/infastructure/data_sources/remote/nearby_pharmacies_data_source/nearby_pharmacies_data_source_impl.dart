import 'dart:convert';

import 'package:geolocator/geolocator.dart';
import 'package:healsense/infastructure/core/extensions/http_status_code_extension.dart';
import 'package:healsense/infastructure/models/nearby_pharmacies.dart';

import 'package:http/http.dart';

import '../../../core/constants/strings.dart';
import '../../../core/utils/environment_var_util.dart';
import '../../../models/payloads/nearby_pharmacies_payload.dart';
import 'nearby_pharmacies_data_source.dart';

class NearbyPharmaciesDataSourceImpl implements NearbyPharmaciesDataSource {
  NearbyPharmaciesDataSourceImpl(this._client);

  final Client _client;

  @override
  Future<NearbyPharmacies?> getNearbyPharmacies(Uri url) async {
    var response = await _client.post(
      url,
    );

    if (response.success) {
      return NearbyPharmacies.fromJson(jsonDecode(response.body));
    } else {
      return null;
    }
  }

  @override
  Uri getNearbyPharmaciesUrl(Position? position) {
    final latitude = position?.latitude;
    final longitude = position?.longitude;
    final googleMapsApiKey = EnvironmentVarUtil.googleMapsApiKey;

    final pharmaciesQueryParameters = NearbyPharmaciesPayload(
      keyword: "pharmacy",
      location: "$latitude,$longitude",
      radius: "700",
      key: googleMapsApiKey,
    );

    return Uri.parse(AppStrings.nearbyPlacesUrl).replace(
      queryParameters: pharmaciesQueryParameters,
    );
  }
}
