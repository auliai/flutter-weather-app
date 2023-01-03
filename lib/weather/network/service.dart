import 'package:dio/dio.dart';
import 'package:web_app_test/weather/data/base_request.dart';
import 'package:web_app_test/weather/data/geocoding_request.dart';
import 'package:web_app_test/weather/data/geocoding_response.dart';
import 'package:web_app_test/weather/data/weather_request.dart';
import 'package:web_app_test/weather/data/weather_response.dart';
import 'package:web_app_test/weather/network/api_client.dart';

class Service {
  ApiClient _client = ApiClient(Dio(BaseOptions(contentType: "application/json")));

  Future<dynamic> _get(BaseRequest req, Function f) async {
    Map<String, dynamic>? params = req.toJson();
    var response = await f(params);
    return response;
  }

  Future<WeatherResponse> getWeather(WeatherRequest req) async {
    return await _get(req, _client.getWeather) as WeatherResponse;
  }

  Future<GeocodingResponse> getGeocoding(GeocodingRequest req) async {
    var response = await _get(req, _client.getGeocoding) as List<GeocodingResponse>;
    var geocodingResponse = response.single;
    print("resp: " + geocodingResponse.toString());
    return geocodingResponse;
  }
}