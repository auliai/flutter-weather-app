import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_app_test/weather/domain/weather_model.dart';
import 'package:web_app_test/weather/presentation/weather_page.dart';

class WeatherPageProvider extends StatelessWidget {
  final String title;
  WeatherPageProvider({required this.title});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<WeatherProvider> (
      create: (_) {
        return WeatherProvider();
      },
      child: WeatherPage(title: title),
    );
  }
}

class WeatherProvider with ChangeNotifier {
  WeatherModel _model = WeatherModel(temp: null, main: null, desc: null, loc: null);
  WeatherModel get model => _model;

  void changeModel(WeatherModel model) {
    this._model = model;
    notifyListeners();
  }
}