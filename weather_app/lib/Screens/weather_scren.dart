

import 'package:flutter/material.dart';

class WeatherScreen extends StatelessWidget {
int temp = 0;
String city;
WeatherScreen({required this.temp, required this.city});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(city)),
      body: Center(
        child: Stack(
          children: [
            Text('$temp', 
             style: TextStyle(
                fontSize: 120,
                fontWeight:FontWeight.bold,
                color: Colors.blue)),
          Positioned(
            right: 5,
            child: Text(
              "°",
              style: TextStyle(fontSize: 60, color: Colors.blueAccent),),
          )
          ]),
      ));
  }
}