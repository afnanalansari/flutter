

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WeatherScreen extends StatelessWidget {
  
  String city;
  int temp;

  WeatherScreen({required this.city, required this.temp});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(city)),
      body: Center(
        child: Stack(
          children:[
           Positioned(        
                    right: 1,
                    child: Text("°", style: TextStyle(
                      color: Colors.blueAccent, fontWeight: FontWeight.bold,
                      fontSize: 40)
                      )),
            Text("$temp",
                    style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold,
                    fontSize: 80)
                  ) 
          ]),
      ),
      
    );
  }
}