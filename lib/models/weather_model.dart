import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Weather {
  String? cityName;
  double? temp;
  double? wind;
  int? humidity;
  double? feelsLike;
  int? pressure;

  // String iconCode;

  Weather({
    this.cityName,
    this.temp,
    this.feelsLike,
    this.humidity,
    this.pressure,
    this.wind,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      cityName: json['name'],
      temp: json['main']['temp'],
      feelsLike: json['main']['feels_like'],
      humidity: json['main']['humidity'],
      pressure: json['main']['pressure'],
      wind: json['wind']['speed'],

      // iconCode: json['weather'][0]['icon'],
    );
    
  }
}
