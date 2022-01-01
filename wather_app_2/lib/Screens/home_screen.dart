

import 'package:flutter/material.dart';
import 'weather_screen.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Weather App")),
      body: Column(

        children: [
          Container(height: 60),
          Text("Weathering", style: TextStyle(color: Colors.blueGrey[600]),),
          Container(
            margin: EdgeInsets.all(50),
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(hintText: "Enter a city"),
              
              ),
          ),
            
            TextButton(
              onPressed: () async {
                try{
                var url = Uri.parse(
                   'http://api.weatherstack.com/current?access_key=afe27c8314fee09a44128a27988797d5&query=${_textController.text}');
               
                var response = await http.get(url);
                var objectBody = jsonDecode(response.body);
                var tempCity = objectBody['current']['temperature'];
                
                if(response.statusCode == 200)
                {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => 
                    WeatherScreen(
                      city:_textController.text,
                      temp: tempCity
                          )
                        )
                      );
                      setState(() {});
                }
                }catch (e)
                {
                  //snack
                }
              }, 
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.search),
                  Container(width: 10),
                  Text("Search"),
                ],
              )
            )

      ]),
      
      
    );
  }
}