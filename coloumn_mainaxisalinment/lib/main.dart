

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
    const MyApp({super.key});

    @override
    Widget build(BuildContext context){
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
                title: const Text("Column Demo",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: Colors.purple, 
                ),
                ),
                centerTitle: true,
                backgroundColor: Colors.orange,
                
          ) ,
          body: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 100,
                width: 200,
                color: Colors.amber,
              ),
              Container(
                width: 200,
                height: 100,
                color: Colors.green,
              ),
              Container(
                height: 100,
                width: 200,
                color: Colors.red,
              ),
            ],
          ),
          ),
      );
    }
}