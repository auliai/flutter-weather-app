import 'package:web_app_test/weather/data/base_request.dart';

class WeatherRequest extends BaseRequest {
  final String lat;
  final String lon;
  final String? mode;
  final String? units;
  final String? lang;

  const WeatherRequest({
    required this.lat,
    required this.lon,
    this.mode,
    this.units,
    this.lang,
  }): super();

  Map<String, dynamic> toJson(){
    var data = super.toJson();
    data['lat'] = this.lat;
    data['lon'] = this.lon;
    if(this.mode != null) {
      data['mode'] = this.mode;
    }
    if(this.units != null) {
      data['units'] = this.units;
    }
    if(this.lang != null) {
      data['lang'] = this.lang;
    }
    return data;
  }
}