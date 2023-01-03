import 'package:flutter/material.dart';
import 'package:web_app_test/weather/domain/weather_factory.dart';
import 'package:web_app_test/weather/domain/weather_model.dart';
import 'package:provider/provider.dart';
import 'package:web_app_test/weather/domain/weather_provider.dart';

class WeatherPage extends StatefulWidget {
  final String title;

  WeatherPage({Key? key, required this.title});

  @override
  State createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  late TextEditingController _controller;
  String _main = "";
  String _desc = "";
  String _temp = "";
  String _loc = "";

  Future<void> getWeather() async {
    WeatherFactory factory = WeatherFactory();
    var newModel = await factory.getWeather(_controller.text);
    Provider.of<WeatherProvider>(context, listen: false)
      .changeModel(newModel);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final state = Provider.of<WeatherProvider>(context);
    var model = state.model;
    _main = model.main ?? "";
    _desc = model.desc ?? "";
    _temp = model.temp ?? "";
    _loc = model.loc ?? "";
  }

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),

      body: Center(
        child: Column (
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row (
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget> [
                Flexible(
                  child: Text("Enter location: "),
                ),
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Input location"
                    ),
                    controller: _controller,
                  ),
                ),
                Flexible(
                  child: TextButton(
                      onPressed: () {
                        getWeather();
                      },
                      child: Text("Submit"),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Flexible(
                  child: Text("Condition: "),
                ),
                Flexible(
                    child: Text(_main),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Flexible(
                  child: Text("Description: "),
                ),
                Flexible(
                    child: Text(_desc),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Flexible(
                  child: Text("Temperature: "),
                ),
                Flexible(
                    child: Text(_temp),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Flexible(
                  child: Text("Location: "),
                ),
                Flexible(
                    child: Text(_loc),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}