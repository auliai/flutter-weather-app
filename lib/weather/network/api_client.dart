import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:web_app_test/weather/data/geocoding_response.dart';
import 'package:web_app_test/weather/network/api.dart';
import 'package:web_app_test/weather/data/weather_response.dart';
part 'api_client.g.dart';

@RestApi(baseUrl: Api.openWeatherApiUrl)
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET(Api.geocodingUrl)
  Future<List<GeocodingResponse>> getGeocoding(@Queries() Map<String, dynamic> params);

  @GET(Api.weatherUrl)
  Future<WeatherResponse> getWeather(@Queries() Map<String, dynamic> params);
}
