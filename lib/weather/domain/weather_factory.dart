import 'package:web_app_test/weather/data/geocoding_request.dart';
import 'package:web_app_test/weather/network/service.dart';
import 'package:web_app_test/weather/data/weather_request.dart';
import 'package:web_app_test/weather/domain/geocoding_model.dart';
import 'package:web_app_test/weather/domain/geocoding_repo.dart';
import 'package:web_app_test/weather/domain/weather_model.dart';
import 'package:web_app_test/weather/domain/weather_repo.dart';

class WeatherFactory {
  Future<WeatherModel> getWeather(String location) async {
    Service service = Service();
    GeocodingRepo geoRepo = GeocodingRepo(service: service);
    GeocodingRequest geoReq = GeocodingRequest(cityName: location);
    GeocodingModel geoModel = await geoRepo.getCoordinate(geoReq);

    WeatherRepo weatherRepo = WeatherRepo(service: service);
    WeatherRequest weatherReq = WeatherRequest(lat: geoModel.lat.toString(),
        lon: geoModel.lon.toString());
    WeatherModel weatherModel = await weatherRepo.getWeather(weatherReq);
    return weatherModel;
  }
}