import 'package:web_app_test/weather/data/geocoding_response.dart';

class GeocodingModel {
  double? lat;
  double? lon;

  GeocodingModel({required this.lat, required this.lon});

  GeocodingModel.fromResponse(GeocodingResponse res) {
    this.lat = res.lat;
    this.lon = res.lon;
  }
}