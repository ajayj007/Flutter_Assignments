import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Listview Builder",
          style: TextStyle(fontWeight:FontWeight.w300,fontSize: 22,color: Colors.green),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 30,
          physics: const ClampingScrollPhysics(),
          itemBuilder: (BuildContext context, int index){
            return Text(
               "Index:$index",
               style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
                color: Colors.yellow,
               ),
            );
          } ) 
      ),
    );
  }
}
