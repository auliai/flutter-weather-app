import 'package:web_app_test/weather/data/base_request.dart';

class GeocodingRequest extends BaseRequest {
  final String cityName;
  final String? stateCode;
  final String? countryCode;
  final int? limit;

  const GeocodingRequest({
    required this.cityName,
    this.stateCode,
    this.countryCode,
    this.limit
  }) : super();

  Map<String, dynamic> toJson(){
    var data = super.toJson();
    String q = this.cityName;
    if(stateCode != null) {
      q = '$q,${this.stateCode}';
    }
    if(countryCode != null) {
      q = '$q,${this.countryCode}';
    }
    data['q'] = q;
    if(limit != null){
      data['limit'] = this.limit;
    }
    return data;
  }
}