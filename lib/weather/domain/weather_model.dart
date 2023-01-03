import 'package:web_app_test/weather/data/weather_response.dart';

class WeatherModel {
  String? temp;
  String? main;
  String? desc;
  String? loc;

  WeatherModel({
    required this.temp,
    required this.main,
    required this.desc,
    required this.loc
  });

  WeatherModel.fromResponse(WeatherResponse res) {
    this.temp = _convertToCelsius(res.main?.temp);
    this.main = res.weather?.single.main ?? "";
    this.desc = res.weather?.single.description ?? "";
    this.loc = '${res.name}, ${res.sys?.country}';
  }

  String _convertToCelsius(double? kelvin){
    if(kelvin != null){
      double celsius = kelvin - 273.15;
      return celsius.toString();
    }

    return "";
  }
}