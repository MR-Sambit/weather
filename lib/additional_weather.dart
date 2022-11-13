import 'package:flutter/material.dart';

TextStyle titlefont =
    const TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0);

TextStyle infofont =
    const TextStyle(fontWeight: FontWeight.w400, fontSize: 18.0);

Widget additionalInofrmation(
    String wind, String humidity, String pressure, String feelsLike) {
  return Container(
      width: double.infinity,
      padding: EdgeInsets.all(18.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Wind", style: titlefont),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Presure",
                    style: titlefont,
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("$wind", style: infofont),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "$pressure",
                    style: infofont,
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("humidity", style: titlefont),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "feelsLike",
                    style: titlefont,
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("$humidity", style: infofont),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "$feelsLike",
                    style: infofont,
                  )
                ],
              ),
            ],
          )
        ],
      ));
}
