import 'package:flutter/material.dart';

Widget currentWeather(IconData icon, String temp, String location) {
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.deepOrange,
          size: 64.0,
        ),
        SizedBox(
          height: 10.00,
        ),
        Text("$temp", style: TextStyle(fontSize: 45.0)),
        Text("$location",
            style: TextStyle(fontSize: 35.0, color: Colors.amber)),
      ],
    ),
  );
}
