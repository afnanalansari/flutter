import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:menu/food.dart';
import 'package:menu/screens/food_screen.dart';

// stl tab 
class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
var foods =[
  MenuItem(name: "burger"),
  MenuItem(name: "pizza"),
  MenuItem(name: "pasta"),
  MenuItem(name: "potato"),
];

  Widget _buildCard({required MenuItem food})
  {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FoodScreen(myFood : food)
          ),
        );
      },
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Image(image: AssetImage('pictures/${food.name}.png'), width: 100),
            Container(width: 50),
          Text(food.name),
            Container(width: 50),
          Transform(
            transform:Matrix4.rotationY(math.pi),
            child: Icon(Icons.arrow_back))
        ],),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Menu Home")),
      body: ListView.builder(
        itemBuilder: (context,i)
      {
          return _buildCard(food: foods[i]);
      },
      itemCount: foods.length,
      )
    );
  }
}