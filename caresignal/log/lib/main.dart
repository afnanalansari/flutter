import 'package:flutter/material.dart';

void main() {
 runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CareSignal/Log',
      home: Scaffold(
        body: 
        Container(
          // decoration:BoxDecoration(
          //   image: DecorationImage(
          //     image:AssetImage("imgs/logo-bg.png"),
          //     fit: BoxFit.cover)),
          child: Center(
            child: Column(
                 children: [
                   Container(height: 5,),
                   ListView(
                     children: [
                       Card( child:
                      Row( children: [
                        // Image.asset('imgs/profile-img.png'),
                        Column(children: [
                          Text("6:28 PM"),
                          Text("Hassan"),
                          Text("21.00000,60.00000")],)
                      ],))
                     ],
                     scrollDirection: Axis.vertical,
                   )

                  
                 ],),
          ),
        ),
      ),
  
    );
  }
}

