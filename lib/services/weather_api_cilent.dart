import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:weather/models/weather_model.dart';

class weatherapicilent {
  Future<Weather> getWeather(String? city) async {
    final url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=2775d2b53613ac93d311e76c0d54abf3&units=metric');
    final response = await http.get(url);
    var body = jsonDecode(response.body);
    if (response.statusCode == 200) {
      return Weather.fromJson(body);
    } else {
      throw Exception('Failed to load weather');
      
    }
  }
}
