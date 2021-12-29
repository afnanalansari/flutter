
import 'package:flutter/material.dart';

// stl tab 
class HomeScreen extends StatelessWidget {
  
  Widget _buildCard()
  {
    return Card(
      child: Row(children: [
        Image(image: AssetImage('pictures/meal.jpg'), width: 100),
        Text("Meal"),
        Icon(Icons.arrow_back)
      ],),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Menu Home")),
      body: Column(children: [
        _buildCard(),
        _buildCard(),
        _buildCard(),
      ],),
    );
  }
}