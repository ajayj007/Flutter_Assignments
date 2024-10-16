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
          title: Text("Image Demo"),
        ),
        body: Center(
          child: Image.asset("assets/Msd.jpg"),
        ),
      ),
    );
  }
}
