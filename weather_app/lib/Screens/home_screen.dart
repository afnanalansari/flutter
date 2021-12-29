
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:weather_app/Screens/weather_scren.dart';
import 'package:http/http.dart' as http;


class HomeScreen extends StatefulWidget {

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final _textFeildController = TextEditingController();
  var homeTemp=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Weather App'),),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(25),
            child: TextField( 
              controller: _textFeildController,
              decoration: InputDecoration(
                hintText: 'City')
                ),
            ),
           TextButton(
             onPressed: () async{
               try {
                 var url = Uri.parse(
                 'http://api.weatherstack.com/current?access_key=3d9f45bf0363d65976f526dc98eb5b44&query=${_textFeildController.text}');
               
               var response = await http.get(url);
               var objectBody = jsonDecode(response.body); //hold the data
               var tempCity = objectBody['current']['temperature'];
           
               if(response.statusCode == 200)
               {
                   //push screen onto stack
                // Navigator.push(
                // context,
                //   MaterialPageRoute(
                //     builder: (context) => WeatherScreen(
                //     temp: tempCity, 
                //     city:_textFeildController.text),
                //   ),
                // );
                 homeTemp = tempCity;
                 setState(() {});
                }               
               } catch (e) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Error'),
                    backgroundColor: Colors.red,
                  ),
                ); 
                 }

             }, 
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Icon(Icons.search),
                 Container(width: 10), //space between icon & text
                 Text("Search")
                 ],)
              ),
                 
                 Container(height: 50),
    
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children:[ Stack(
                      children: [
                          Text('$homeTemp', style: TextStyle(
                              fontSize: 100,
                              fontWeight:FontWeight.bold,
                              color: Colors.blue)),
                              Container(),
                          Positioned(
                            right: 1,
                            child: Text("°",style: TextStyle(fontSize: 50, color: Colors.blueAccent),),
                        )
                      ]),
                   ]),
          
           ],),
    );
  }
}

