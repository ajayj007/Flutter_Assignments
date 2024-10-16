
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      title: "core2web",
      home: HomeApp(),
    );
  }
}

class HomeApp extends StatelessWidget{
  const HomeApp({super.key});
  @override
  Widget build(BuildContext context){
      return Scaffold(
          appBar: AppBar(
            title: const Text("First App",
            style: TextStyle(
              fontSize: 20,
            ),
            
            ),
            backgroundColor: Colors.blue,
          ),

          body: Container(
            height: 200,
            width: 200,
            decoration: const BoxDecoration(
              color: Colors.amber,
              shape: BoxShape.rectangle,
            ),
          ),
      );
  }
  
  

}