import 'dart:convert';

import 'package:api_handling/core/core.dart';
import 'package:api_handling/models/weather_model/weather_model.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

class WeatherService {
  Future<dynamic> getCurrentLocation() async {
    var p = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.low,
      forceAndroidLocationManager: true,
    );
    if (p != null) {
      final lat = p.latitude;
      final long = p.longitude;
      print('Lat: ${lat} , Long: ${long}}');
      final w = await getCurrentCityWeather(p);
      return w;
    } else {
      print('Data unavailable');
    }
  }

  Future<dynamic> getCurrentCityWeather(Position position) async {
    var uri =
        '${weatherApi}lat=${position.latitude}&lon=${position.longitude}&appid=${weatherApiKey}&units=metric';
    var url = Uri.parse(uri);
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var data = response.body;
      //print(data);
      final res = jsonDecode(data);
      final result = WeatherModel.fromJson(res);
      //print(result.name);
      return result;
    } else {
      print(response.statusCode);
    }
  }

  Future getCityWeather(String city) async {
    var client = http.Client();
    var uri = '${weatherApi}q=$city&appid=${weatherApiKey}';
    var url = Uri.parse(uri);
    var response = await client.get(url);

    if (response.statusCode == 200) {
      var data = response.body;
      final res = jsonDecode(data);
      final result = WeatherModel.fromJson(res);
      return result;
    } else {
      //print(response.statusCode);

      throw Exception(' \nmake sure that you have entered the correct city');
    }
  }
}
