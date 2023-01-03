import 'package:web_app_test/weather/data/geocoding_request.dart';
import 'package:web_app_test/weather/data/geocoding_response.dart';
import 'package:web_app_test/weather/network/service.dart';
import 'package:web_app_test/weather/domain/geocoding_model.dart';

class GeocodingRepo {
  Service service;

  GeocodingRepo({required this.service});

  Future<GeocodingModel> getCoordinate(GeocodingRequest req) async {
    GeocodingResponse response = await service.getGeocoding(req);
    return GeocodingModel.fromResponse(response);
  }
}