
import 'package:flutter/material.dart';
import 'package:menu/food.dart';



class FoodScreen extends StatelessWidget {

  MenuItem myFood;
  FoodScreen({required this.myFood});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(myFood.name), backgroundColor: Colors.blueAccent,),
      body: Column(
        children: [
          Container(height: 20),
          Image.asset("pictures/${myFood.name}.png", width: 150),
          Container(height: 30),
          Text("This is a descriptive paragraph")
        ],
      ),

      
    );
  }
}