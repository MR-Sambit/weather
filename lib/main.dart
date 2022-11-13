import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:weather/additional_weather.dart';
import 'package:weather/current_weather.dart';
import 'package:weather/models/weather_model.dart';
import 'package:weather/services/weather_api_cilent.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  weatherapicilent client = weatherapicilent();
  Weather? data = Weather();
  Future<Weather> getData() async {
    data = await client.getWeather('kolkata');
    return data!;
  }
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   client.getcurrentweather("kolhapur");
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        elevation: 1.0,
        title: Text(
          "Weather App",
          style: TextStyle(color: Colors.white60),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu_sharp),
          color: Colors.amberAccent,
        ),
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapsot) {
          if (snapsot.connectionState == ConnectionState.done) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                currentWeather(Icons.wb_sunny_outlined, "${data!.temp}",
                    "${data!.cityName}"),
                SizedBox(
                  height: 65.0,
                ),
                Text(
                  "Additional Information",
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                ),
                Divider(),
                SizedBox(
                  height: 20,
                ),
                additionalInofrmation("${data!.wind}", "${data!.humidity}",
                    "${data!.pressure}", "${data!.feelsLike}"),
              ],
            );
          } else if (snapsot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return Container();
        },
      ),
    );
  }
}
